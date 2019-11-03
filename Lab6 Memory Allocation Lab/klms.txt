/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * - internal implementation
 *
 * There exist numerous alternative for several options.
 * My 20170736 Hong Jiseung's mm.c uses the format of the followings.
 *
 * 1. Allocation Placement
 *
 * I used first fit. Traversing the free blocks, and then find the 
 * first fitted block to allocate.
 *
 * 2. Block Format
 *
 * I used Knuth's boudary tag, which includes header and footer.
 * Not pure.
 *
 * 3. Free List Format
 *
 * I used freeing policy with coalescing right away.
 * It means I do not wait for the next allocation to make coalescing.
 *
 * 4. Splitting Policy
 *
 * As well as Coalescing Policy, I will split the originally freed
 * block to be splitted right away.
 *
 * 5. Re-alloc Implementation
 *
 * Let's say the 'requested size' = new_size
 * 1) new_size < old_size
 * Then another type of coalescing would occur.
 * New header n footer will be made, the size of allocated block will shrunk.
 * 2) new_size > old_size
 * Then we free the allocated block, and then do the function 'malloc'.
 * Also another type of coalescing would occur.
 * 3) new_size = old_size
 * originally allocated block would be returned.
 *
 * 6. Freed list traversal
 * This code traverse the freed list for operations.
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE   4
#define DSIZE   8
#define CHUNKSIZE   (1<<12)

/* Minimum block size */
// #define UNIT    24

#define MAX(x, y)   ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)  (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = val)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((void*)(bp) - WSIZE)
#define FTRP(bp)    ((void*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((void*)(bp) + GET_SIZE(((void*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((void*)(bp) - GET_SIZE(((void*)(bp) - DSIZE)))

/* Given header or footer ptr p, compute the size of block n allocated state */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_STATE(p)    (GET(p) & 0x1)

/* Basic pointer to the first block n first freed block */
void *heap_listp = 0;

/* Initial prototype of helper functions */
void *extend_heap(size_t words);
void place(void *ptr, size_t asize);
void *find_fit(size_t asize);
void *coalesce(void *ptr);

/* Extra helper functions */


/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1){
        return -1;
    }
    
    /* Making prologue & epilogue */
    
    /* Alignment paddign n Prologue : [0 | UNIT/1 | UNIT/1] */
    PUT(heap_listp, 0);
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
    
    /* Epilogue */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));
    heap_listp += (2 * WSIZE);
    
    /* Extend the empty heap w/ free block of CHUNKSIZE bytes */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL){
        return -1;
    }
    
    return 0;
    
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    char *bp;
    size_t asize;
    size_t extend_size;
    
    if(size == 0){
        return NULL;
    }
    
    /* No block can be smaller than UNIT block*/
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    
    /* If no proper fit is found, get more memory */
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size/WSIZE)) == NULL)
        return NULL;
    
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if(ptr == NULL){
        return;
    }
    /* get the block size from ptr */
    size_t size = GET_SIZE(HDRP(ptr));
    
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    size_t oldsize;                                                                        
    void *newptr;                           

    if(ptr == NULL){                                                            
        mm_malloc(size);
        return NULL;
    }

    if(size == 0){                                                              
        mm_free(ptr);                                                           
        return NULL;
    }

    // size_t asize = MAX(ALIGN(size) + DSIZE, DSIZE); 
    oldsize = GET_SIZE(HDRP(ptr));                                               

    // if(oldsize == asize){                                                        
    //     return ptr;
    // }

    // if(asize <= oldsize){                                                            
    //     size = asize;                    

    //     if(oldsize - size <= DSIZE){                    
    //         return ptr;                              
    //     }
    
    //     mm_free(NEXT_BLKP(ptr));                                                             
    //     return ptr;
    // }
    
    newptr = mm_malloc(size);

    if(newptr == NULL){                                    
        return NULL;
    }

    if(size < oldsize){
        oldsize = size;
    }

    memcpy(newptr, ptr, oldsize);                    
    mm_free(ptr);                                  
    return newptr;
}

/* reference in book */
void *extend_heap(size_t words){
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size)) == -1){
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    
    /* new epilogue */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


/* reference in book */
void *coalesce(void *bp){
    size_t prev_alloc = GET_STATE(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_STATE(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if(prev_alloc && next_alloc){
        return bp;
    }
    
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    return bp;
}

/* first fit */
void *find_fit(size_t asize){
    void *bp;
    
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if(!GET_STATE(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))){
            return bp;
        }
    }
    return NULL;
}

void place(void *bp, size_t asize){
    
    size_t csize = GET_SIZE(HDRP(bp));
    
    if((csize - asize) >= (2 * DSIZE)){
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else{
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}







/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * - internal implementation
 *
 * There exist numerous alternative for several options.
 * My 20170736 Hong Jiseung's mm.c uses the format of the followings.
 *
 * 1. Allocation Placement
 *
 * I used first fit. Traversing the free blocks, and then find the 
 * first fitted block to allocate.
 *
 * 2. Block Format
 *
 * I used Knuth's boudary tag, which includes header and footer.
 * Not pure.
 *
 * 3. Free List Format
 *
 * I used freeing policy with coalescing right away.
 * It means I do not wait for the next allocation to make coalescing.
 *
 * 4. Splitting Policy
 *
 * As well as Coalescing Policy, I will split the originally freed
 * block to be splitted right away.
 *
 * 5. Re-alloc Implementation
 *
 * Let's say the 'requested size' = new_size
 * 1) new_size < old_size
 * Then another type of coalescing would occur.
 * New header n footer will be made, the size of allocated block will shrunk.
 * 2) new_size > old_size
 * Then we free the allocated block, and then do the function 'malloc'.
 * Also another type of coalescing would occur.
 * 3) new_size = old_size
 * originally allocated block would be returned.
 *
 * 6. Freed list traversal
 * This code traverse the freed list for operations.
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE   4
#define DSIZE   8
#define CHUNKSIZE   (1<<12)

/* Minimum block size */
// #define UNIT    24

#define MAX(x, y)   ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)  (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = val)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((void*)(bp) - WSIZE)
#define FTRP(bp)    ((void*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((void*)(bp) + GET_SIZE(((void*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((void*)(bp) - GET_SIZE(((void*)(bp) - DSIZE)))

/* Given header or footer ptr p, compute the size of block n allocated state */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_STATE(p)    (GET(p) & 0x1)

/* Basic pointer to the first block n first freed block */
void *heap_listp = 0;

/* Initial prototype of helper functions */
void *extend_heap(size_t words);
void place(void *ptr, size_t asize);
void *find_fit(size_t asize);
void *coalesce(void *ptr);

/* Extra helper functions */


/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1){
        return -1;
    }
    
    /* Making prologue & epilogue */
    
    /* Alignment paddign n Prologue : [0 | UNIT/1 | UNIT/1] */
    PUT(heap_listp, 0);
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
    
    /* Epilogue */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));
    heap_listp += (2 * WSIZE);
    
    /* Extend the empty heap w/ free block of CHUNKSIZE bytes */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL){
        return -1;
    }
    
    return 0;
    
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    char *bp;
    size_t asize;
    size_t extend_size;
    
    if(size == 0){
        return NULL;
    }
    
    /* No block can be smaller than UNIT block*/
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    
    /* If no proper fit is found, get more memory */
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size/WSIZE)) == NULL)
        return NULL;
    
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if(ptr == NULL){
        return;
    }
    /* get the block size from ptr */
    size_t size = GET_SIZE(HDRP(ptr));
    
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    size_t oldsize;                                                                        
    void *newptr;                           

    if(ptr == NULL){                                                            
        mm_malloc(size);
        return NULL;
    }

    if(size == 0){                                                              
        mm_free(ptr);                                                           
        return NULL;
    }

    // size_t asize = MAX(ALIGN(size) + DSIZE, DSIZE); 
    oldsize = GET_SIZE(HDRP(ptr));                                               

    // if(oldsize == asize){                                                        
    //     return ptr;
    // }

    // if(asize <= oldsize){                                                            
    //     size = asize;                    

    //     if(oldsize - size <= DSIZE){                    
    //         return ptr;                              
    //     }
    
    //     mm_free(NEXT_BLKP(ptr));                                                             
    //     return ptr;
    // }
    
    newptr = mm_malloc(size);

    if(newptr == NULL){                                    
        return NULL;
    }

    if(size < oldsize){
        oldsize = size;
    }

    memcpy(newptr, ptr, oldsize);                    
    mm_free(ptr);                                  
    return newptr;
}

/* reference in book */
void *extend_heap(size_t words){
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size)) == -1){
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    
    /* new epilogue */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


/* reference in book */
void *coalesce(void *bp){
    size_t prev_alloc = GET_STATE(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_STATE(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if(prev_alloc && next_alloc){
        return bp;
    }
    
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    return bp;
}

/* first fit */
void *find_fit(size_t asize){
    void *bp;
    
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if(!GET_STATE(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))){
            return bp;
        }
    }
    return NULL;
}

void place(void *bp, size_t asize){
    
    size_t csize = GET_SIZE(HDRP(bp));
    
    if((csize - asize) >= (2 * DSIZE)){
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else{
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}







/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * - internal implementation
 *
 * There exist numerous alternative for several options.
 * My 20170736 Hong Jiseung's mm.c uses the format of the followings.
 *
 * 1. Allocation Placement
 *
 * I used first fit. Traversing the free blocks, and then find the 
 * first fitted block to allocate.
 *
 * 2. Block Format
 *
 * I used Knuth's boudary tag, which includes header and footer.
 * Not pure.
 *
 * 3. Free List Format
 *
 * I used freeing policy with coalescing right away.
 * It means I do not wait for the next allocation to make coalescing.
 *
 * 4. Splitting Policy
 *
 * As well as Coalescing Policy, I will split the originally freed
 * block to be splitted right away.
 *
 * 5. Re-alloc Implementation
 *
 * Let's say the 'requested size' = new_size
 * 1) new_size < old_size
 * Then another type of coalescing would occur.
 * New header n footer will be made, the size of allocated block will shrunk.
 * 2) new_size > old_size
 * Then we free the allocated block, and then do the function 'malloc'.
 * Also another type of coalescing would occur.
 * 3) new_size = old_size
 * originally allocated block would be returned.
 *
 * 6. Freed list traversal
 * This code traverse the freed list for operations.
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE   4
#define DSIZE   8
#define CHUNKSIZE   (1<<12)

/* Minimum block size */
// #define UNIT    24

#define MAX(x, y)   ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)  (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = val)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((void*)(bp) - WSIZE)
#define FTRP(bp)    ((void*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((void*)(bp) + GET_SIZE(((void*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((void*)(bp) - GET_SIZE(((void*)(bp) - DSIZE)))

/* Given header or footer ptr p, compute the size of block n allocated state */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_STATE(p)    (GET(p) & 0x1)

/* Basic pointer to the first block n first freed block */
void *heap_listp = 0;

/* Initial prototype of helper functions */
void *extend_heap(size_t words);
void place(void *ptr, size_t asize);
void *find_fit(size_t asize);
void *coalesce(void *ptr);

/* Extra helper functions */


/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1){
        return -1;
    }
    
    /* Making prologue & epilogue */
    
    /* Alignment paddign n Prologue : [0 | UNIT/1 | UNIT/1] */
    PUT(heap_listp, 0);
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
    
    /* Epilogue */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));
    heap_listp += (2 * WSIZE);
    
    /* Extend the empty heap w/ free block of CHUNKSIZE bytes */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL){
        return -1;
    }
    
    return 0;
    
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    char *bp;
    size_t asize;
    size_t extend_size;
    
    if(size == 0){
        return NULL;
    }
    
    /* No block can be smaller than UNIT block*/
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    
    /* If no proper fit is found, get more memory */
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size/WSIZE)) == NULL)
        return NULL;
    
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if(ptr == NULL){
        return;
    }
    /* get the block size from ptr */
    size_t size = GET_SIZE(HDRP(ptr));
    
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    size_t oldsize;                                                                        
    void *newptr;                           

    if(ptr == NULL){                                                            
        mm_malloc(size);
        return NULL;
    }

    if(size == 0){                                                              
        mm_free(ptr);                                                           
        return NULL;
    }

    // size_t asize = MAX(ALIGN(size) + DSIZE, DSIZE); 
    oldsize = GET_SIZE(HDRP(ptr));                                               

    // if(oldsize == asize){                                                        
    //     return ptr;
    // }

    // if(asize <= oldsize){                                                            
    //     size = asize;                    

    //     if(oldsize - size <= DSIZE){                    
    //         return ptr;                              
    //     }
    
    //     mm_free(NEXT_BLKP(ptr));                                                             
    //     return ptr;
    // }
    
    newptr = mm_malloc(size);

    if(newptr == NULL){                                    
        return NULL;
    }

    if(size < oldsize){
        oldsize = size;
    }

    memcpy(newptr, ptr, oldsize);                    
    mm_free(ptr);                                  
    return newptr;
}

/* reference in book */
void *extend_heap(size_t words){
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size)) == -1){
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    
    /* new epilogue */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


/* reference in book */
void *coalesce(void *bp){
    size_t prev_alloc = GET_STATE(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_STATE(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if(prev_alloc && next_alloc){
        return bp;
    }
    
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    return bp;
}

/* first fit */
void *find_fit(size_t asize){
    void *bp;
    
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if(!GET_STATE(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))){
            return bp;
        }
    }
    return NULL;
}

void place(void *bp, size_t asize){
    
    size_t csize = GET_SIZE(HDRP(bp));
    
    if((csize - asize) >= (2 * DSIZE)){
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else{
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}







/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * - internal implementation
 *
 * There exist numerous alternative for several options.
 * My 20170736 Hong Jiseung's mm.c uses the format of the followings.
 *
 * 1. Allocation Placement
 *
 * I used first fit. Traversing the free blocks, and then find the 
 * first fitted block to allocate.
 *
 * 2. Block Format
 *
 * I used Knuth's boudary tag, which includes header and footer.
 * Not pure.
 *
 * 3. Free List Format
 *
 * I used freeing policy with coalescing right away.
 * It means I do not wait for the next allocation to make coalescing.
 *
 * 4. Splitting Policy
 *
 * As well as Coalescing Policy, I will split the originally freed
 * block to be splitted right away.
 *
 * 5. Re-alloc Implementation
 *
 * Let's say the 'requested size' = new_size
 * 1) new_size < old_size
 * Then another type of coalescing would occur.
 * New header n footer will be made, the size of allocated block will shrunk.
 * 2) new_size > old_size
 * Then we free the allocated block, and then do the function 'malloc'.
 * Also another type of coalescing would occur.
 * 3) new_size = old_size
 * originally allocated block would be returned.
 *
 * 6. Freed list traversal
 * This code traverse the freed list for operations.
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE   4
#define DSIZE   8
#define CHUNKSIZE   (1<<12)

/* Minimum block size */
// #define UNIT    24

#define MAX(x, y)   ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)  (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = val)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((void*)(bp) - WSIZE)
#define FTRP(bp)    ((void*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((void*)(bp) + GET_SIZE(((void*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((void*)(bp) - GET_SIZE(((void*)(bp) - DSIZE)))

/* Given header or footer ptr p, compute the size of block n allocated state */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_STATE(p)    (GET(p) & 0x1)

/* Basic pointer to the first block n first freed block */
void *heap_listp = 0;

/* Initial prototype of helper functions */
void *extend_heap(size_t words);
void place(void *ptr, size_t asize);
void *find_fit(size_t asize);
void *coalesce(void *ptr);

/* Extra helper functions */


/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1){
        return -1;
    }
    
    /* Making prologue & epilogue */
    
    /* Alignment paddign n Prologue : [0 | UNIT/1 | UNIT/1] */
    PUT(heap_listp, 0);
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
    
    /* Epilogue */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));
    heap_listp += (2 * WSIZE);
    
    /* Extend the empty heap w/ free block of CHUNKSIZE bytes */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL){
        return -1;
    }
    
    return 0;
    
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    char *bp;
    size_t asize;
    size_t extend_size;
    
    if(size == 0){
        return NULL;
    }
    
    /* No block can be smaller than UNIT block*/
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    
    /* If no proper fit is found, get more memory */
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size/WSIZE)) == NULL)
        return NULL;
    
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if(ptr == NULL){
        return;
    }
    /* get the block size from ptr */
    size_t size = GET_SIZE(HDRP(ptr));
    
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    size_t oldsize;                                                                        
    void *newptr;                           

    if(ptr == NULL){                                                            
        mm_malloc(size);
        return NULL;
    }

    if(size == 0){                                                              
        mm_free(ptr);                                                           
        return NULL;
    }

    // size_t asize = MAX(ALIGN(size) + DSIZE, DSIZE); 
    oldsize = GET_SIZE(HDRP(ptr));                                               

    // if(oldsize == asize){                                                        
    //     return ptr;
    // }

    // if(asize <= oldsize){                                                            
    //     size = asize;                    

    //     if(oldsize - size <= DSIZE){                    
    //         return ptr;                              
    //     }
    
    //     mm_free(NEXT_BLKP(ptr));                                                             
    //     return ptr;
    // }
    
    newptr = mm_malloc(size);

    if(newptr == NULL){                                    
        return NULL;
    }

    if(size < oldsize){
        oldsize = size;
    }

    memcpy(newptr, ptr, oldsize);                    
    mm_free(ptr);                                  
    return newptr;
}

/* reference in book */
void *extend_heap(size_t words){
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size)) == -1){
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    
    /* new epilogue */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


/* reference in book */
void *coalesce(void *bp){
    size_t prev_alloc = GET_STATE(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_STATE(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if(prev_alloc && next_alloc){
        return bp;
    }
    
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    return bp;
}

/* first fit */
void *find_fit(size_t asize){
    void *bp;
    
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if(!GET_STATE(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))){
            return bp;
        }
    }
    return NULL;
}

void place(void *bp, size_t asize){
    
    size_t csize = GET_SIZE(HDRP(bp));
    
    if((csize - asize) >= (2 * DSIZE)){
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else{
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}







/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * - internal implementation
 *
 * There exist numerous alternative for several options.
 * My 20170736 Hong Jiseung's mm.c uses the format of the followings.
 *
 * 1. Allocation Placement
 *
 * I used first fit. Traversing the free blocks, and then find the 
 * first fitted block to allocate.
 *
 * 2. Block Format
 *
 * I used Knuth's boudary tag, which includes header and footer.
 * Not pure.
 *
 * 3. Free List Format
 *
 * I used freeing policy with coalescing right away.
 * It means I do not wait for the next allocation to make coalescing.
 *
 * 4. Splitting Policy
 *
 * As well as Coalescing Policy, I will split the originally freed
 * block to be splitted right away.
 *
 * 5. Re-alloc Implementation
 *
 * Let's say the 'requested size' = new_size
 * 1) new_size < old_size
 * Then another type of coalescing would occur.
 * New header n footer will be made, the size of allocated block will shrunk.
 * 2) new_size > old_size
 * Then we free the allocated block, and then do the function 'malloc'.
 * Also another type of coalescing would occur.
 * 3) new_size = old_size
 * originally allocated block would be returned.
 *
 * 6. Freed list traversal
 * This code traverse the freed list for operations.
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE   4
#define DSIZE   8
#define CHUNKSIZE   (1<<12)

/* Minimum block size */
// #define UNIT    24

#define MAX(x, y)   ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)  (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = val)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((void*)(bp) - WSIZE)
#define FTRP(bp)    ((void*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((void*)(bp) + GET_SIZE(((void*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((void*)(bp) - GET_SIZE(((void*)(bp) - DSIZE)))

/* Given header or footer ptr p, compute the size of block n allocated state */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_STATE(p)    (GET(p) & 0x1)

/* Basic pointer to the first block n first freed block */
void *heap_listp = 0;

/* Initial prototype of helper functions */
void *extend_heap(size_t words);
void place(void *ptr, size_t asize);
void *find_fit(size_t asize);
void *coalesce(void *ptr);

/* Extra helper functions */


/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1){
        return -1;
    }
    
    /* Making prologue & epilogue */
    
    /* Alignment paddign n Prologue : [0 | UNIT/1 | UNIT/1] */
    PUT(heap_listp, 0);
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
    
    /* Epilogue */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));
    heap_listp += (2 * WSIZE);
    
    /* Extend the empty heap w/ free block of CHUNKSIZE bytes */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL){
        return -1;
    }
    
    return 0;
    
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    char *bp;
    size_t asize;
    size_t extend_size;
    
    if(size == 0){
        return NULL;
    }
    
    /* No block can be smaller than UNIT block*/
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    
    /* If no proper fit is found, get more memory */
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size/WSIZE)) == NULL)
        return NULL;
    
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if(ptr == NULL){
        return;
    }
    /* get the block size from ptr */
    size_t size = GET_SIZE(HDRP(ptr));
    
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    size_t oldsize;                                                                        
    void *newptr;                           

    if(ptr == NULL){                                                            
        mm_malloc(size);
        return NULL;
    }

    if(size == 0){                                                              
        mm_free(ptr);                                                           
        return NULL;
    }

    // size_t asize = MAX(ALIGN(size) + DSIZE, DSIZE); 
    oldsize = GET_SIZE(HDRP(ptr));                                               

    // if(oldsize == asize){                                                        
    //     return ptr;
    // }

    // if(asize <= oldsize){                                                            
    //     size = asize;                    

    //     if(oldsize - size <= DSIZE){                    
    //         return ptr;                              
    //     }
    
    //     mm_free(NEXT_BLKP(ptr));                                                             
    //     return ptr;
    // }
    
    newptr = mm_malloc(size);

    if(newptr == NULL){                                    
        return NULL;
    }

    if(size < oldsize){
        oldsize = size;
    }

    memcpy(newptr, ptr, oldsize);                    
    mm_free(ptr);                                  
    return newptr;
}

/* reference in book */
void *extend_heap(size_t words){
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size)) == -1){
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    
    /* new epilogue */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


/* reference in book */
void *coalesce(void *bp){
    size_t prev_alloc = GET_STATE(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_STATE(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if(prev_alloc && next_alloc){
        return bp;
    }
    
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    return bp;
}

/* first fit */
void *find_fit(size_t asize){
    void *bp;
    
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if(!GET_STATE(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))){
            return bp;
        }
    }
    return NULL;
}

void place(void *bp, size_t asize){
    
    size_t csize = GET_SIZE(HDRP(bp));
    
    if((csize - asize) >= (2 * DSIZE)){
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else{
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}







/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * - internal implementation
 *
 * There exist numerous alternative for several options.
 * My 20170736 Hong Jiseung's mm.c uses the format of the followings.
 *
 * 1. Allocation Placement
 *
 * I used first fit. Traversing the free blocks, and then find the 
 * first fitted block to allocate.
 *
 * 2. Block Format
 *
 * I used Knuth's boudary tag, which includes header and footer.
 * Not pure.
 *
 * 3. Free List Format
 *
 * I used freeing policy with coalescing right away.
 * It means I do not wait for the next allocation to make coalescing.
 *
 * 4. Splitting Policy
 *
 * As well as Coalescing Policy, I will split the originally freed
 * block to be splitted right away.
 *
 * 5. Re-alloc Implementation
 *
 * Let's say the 'requested size' = new_size
 * 1) new_size < old_size
 * Then another type of coalescing would occur.
 * New header n footer will be made, the size of allocated block will shrunk.
 * 2) new_size > old_size
 * Then we free the allocated block, and then do the function 'malloc'.
 * Also another type of coalescing would occur.
 * 3) new_size = old_size
 * originally allocated block would be returned.
 *
 * 6. Freed list traversal
 * This code traverse the freed list for operations.
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE   4
#define DSIZE   8
#define CHUNKSIZE   (1<<12)

/* Minimum block size */
// #define UNIT    24

#define MAX(x, y)   ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)  (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = val)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((void*)(bp) - WSIZE)
#define FTRP(bp)    ((void*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((void*)(bp) + GET_SIZE(((void*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((void*)(bp) - GET_SIZE(((void*)(bp) - DSIZE)))

/* Given header or footer ptr p, compute the size of block n allocated state */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_STATE(p)    (GET(p) & 0x1)

/* Basic pointer to the first block n first freed block */
void *heap_listp = 0;

/* Initial prototype of helper functions */
void *extend_heap(size_t words);
void place(void *ptr, size_t asize);
void *find_fit(size_t asize);
void *coalesce(void *ptr);

/* Extra helper functions */


/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1){
        return -1;
    }
    
    /* Making prologue & epilogue */
    
    /* Alignment paddign n Prologue : [0 | UNIT/1 | UNIT/1] */
    PUT(heap_listp, 0);
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
    
    /* Epilogue */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));
    heap_listp += (2 * WSIZE);
    
    /* Extend the empty heap w/ free block of CHUNKSIZE bytes */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL){
        return -1;
    }
    
    return 0;
    
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    char *bp;
    size_t asize;
    size_t extend_size;
    
    if(size == 0){
        return NULL;
    }
    
    /* No block can be smaller than UNIT block*/
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    
    /* If no proper fit is found, get more memory */
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size/WSIZE)) == NULL)
        return NULL;
    
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if(ptr == NULL){
        return;
    }
    /* get the block size from ptr */
    size_t size = GET_SIZE(HDRP(ptr));
    
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    size_t oldsize;                                                                        
    void *newptr;                           

    if(ptr == NULL){                                                            
        mm_malloc(size);
        return NULL;
    }

    if(size == 0){                                                              
        mm_free(ptr);                                                           
        return NULL;
    }

    // size_t asize = MAX(ALIGN(size) + DSIZE, DSIZE); 
    oldsize = GET_SIZE(HDRP(ptr));                                               

    // if(oldsize == asize){                                                        
    //     return ptr;
    // }

    // if(asize <= oldsize){                                                            
    //     size = asize;                    

    //     if(oldsize - size <= DSIZE){                    
    //         return ptr;                              
    //     }
    
    //     mm_free(NEXT_BLKP(ptr));                                                             
    //     return ptr;
    // }
    
    newptr = mm_malloc(size);

    if(newptr == NULL){                                    
        return NULL;
    }

    if(size < oldsize){
        oldsize = size;
    }

    memcpy(newptr, ptr, oldsize);                    
    mm_free(ptr);                                  
    return newptr;
}

/* reference in book */
void *extend_heap(size_t words){
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size)) == -1){
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    
    /* new epilogue */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


/* reference in book */
void *coalesce(void *bp){
    size_t prev_alloc = GET_STATE(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_STATE(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if(prev_alloc && next_alloc){
        return bp;
    }
    
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    return bp;
}

/* first fit */
void *find_fit(size_t asize){
    void *bp;
    
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if(!GET_STATE(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))){
            return bp;
        }
    }
    return NULL;
}

void place(void *bp, size_t asize){
    
    size_t csize = GET_SIZE(HDRP(bp));
    
    if((csize - asize) >= (2 * DSIZE)){
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else{
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}







/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * - internal implementation
 *
 * There exist numerous alternative for several options.
 * My 20170736 Hong Jiseung's mm.c uses the format of the followings.
 *
 * 1. Allocation Placement
 *
 * I used first fit. Traversing the free blocks, and then find the 
 * first fitted block to allocate.
 *
 * 2. Block Format
 *
 * I used Knuth's boudary tag, which includes header and footer.
 * Not pure.
 *
 * 3. Free List Format
 *
 * I used freeing policy with coalescing right away.
 * It means I do not wait for the next allocation to make coalescing.
 *
 * 4. Splitting Policy
 *
 * As well as Coalescing Policy, I will split the originally freed
 * block to be splitted right away.
 *
 * 5. Re-alloc Implementation
 *
 * Let's say the 'requested size' = new_size
 * 1) new_size < old_size
 * Then another type of coalescing would occur.
 * New header n footer will be made, the size of allocated block will shrunk.
 * 2) new_size > old_size
 * Then we free the allocated block, and then do the function 'malloc'.
 * Also another type of coalescing would occur.
 * 3) new_size = old_size
 * originally allocated block would be returned.
 *
 * 6. Freed list traversal
 * This code traverse the freed list for operations.
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE   4
#define DSIZE   8
#define CHUNKSIZE   (1<<12)

/* Minimum block size */
// #define UNIT    24

#define MAX(x, y)   ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)  (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = val)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((void*)(bp) - WSIZE)
#define FTRP(bp)    ((void*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((void*)(bp) + GET_SIZE(((void*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((void*)(bp) - GET_SIZE(((void*)(bp) - DSIZE)))

/* Given header or footer ptr p, compute the size of block n allocated state */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_STATE(p)    (GET(p) & 0x1)

/* Basic pointer to the first block n first freed block */
void *heap_listp = 0;

/* Initial prototype of helper functions */
void *extend_heap(size_t words);
void place(void *ptr, size_t asize);
void *find_fit(size_t asize);
void *coalesce(void *ptr);

/* Extra helper functions */


/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1){
        return -1;
    }
    
    /* Making prologue & epilogue */
    
    /* Alignment paddign n Prologue : [0 | UNIT/1 | UNIT/1] */
    PUT(heap_listp, 0);
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
    
    /* Epilogue */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));
    heap_listp += (2 * WSIZE);
    
    /* Extend the empty heap w/ free block of CHUNKSIZE bytes */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL){
        return -1;
    }
    
    return 0;
    
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    char *bp;
    size_t asize;
    size_t extend_size;
    
    if(size == 0){
        return NULL;
    }
    
    /* No block can be smaller than UNIT block*/
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    
    /* If no proper fit is found, get more memory */
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size/WSIZE)) == NULL)
        return NULL;
    
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if(ptr == NULL){
        return;
    }
    /* get the block size from ptr */
    size_t size = GET_SIZE(HDRP(ptr));
    
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    size_t oldsize;                                                                        
    void *newptr;                           

    if(ptr == NULL){                                                            
        mm_malloc(size);
        return NULL;
    }

    if(size == 0){                                                              
        mm_free(ptr);                                                           
        return NULL;
    }

    // size_t asize = MAX(ALIGN(size) + DSIZE, DSIZE); 
    oldsize = GET_SIZE(HDRP(ptr));                                               

    // if(oldsize == asize){                                                        
    //     return ptr;
    // }

    // if(asize <= oldsize){                                                            
    //     size = asize;                    

    //     if(oldsize - size <= DSIZE){                    
    //         return ptr;                              
    //     }
    
    //     mm_free(NEXT_BLKP(ptr));                                                             
    //     return ptr;
    // }
    
    newptr = mm_malloc(size);

    if(newptr == NULL){                                    
        return NULL;
    }

    if(size < oldsize){
        oldsize = size;
    }

    memcpy(newptr, ptr, oldsize);                    
    mm_free(ptr);                                  
    return newptr;
}

/* reference in book */
void *extend_heap(size_t words){
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size)) == -1){
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    
    /* new epilogue */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


/* reference in book */
void *coalesce(void *bp){
    size_t prev_alloc = GET_STATE(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_STATE(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if(prev_alloc && next_alloc){
        return bp;
    }
    
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    return bp;
}

/* first fit */
void *find_fit(size_t asize){
    void *bp;
    
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if(!GET_STATE(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))){
            return bp;
        }
    }
    return NULL;
}

void place(void *bp, size_t asize){
    
    size_t csize = GET_SIZE(HDRP(bp));
    
    if((csize - asize) >= (2 * DSIZE)){
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else{
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}







/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * - internal implementation
 *
 * There exist numerous alternative for several options.
 * My 20170736 Hong Jiseung's mm.c uses the format of the followings.
 *
 * 1. Allocation Placement
 *
 * I used first fit. Traversing the free blocks, and then find the 
 * first fitted block to allocate.
 *
 * 2. Block Format
 *
 * I used Knuth's boudary tag, which includes header and footer.
 * Not pure.
 *
 * 3. Free List Format
 *
 * I used freeing policy with coalescing right away.
 * It means I do not wait for the next allocation to make coalescing.
 *
 * 4. Splitting Policy
 *
 * As well as Coalescing Policy, I will split the originally freed
 * block to be splitted right away.
 *
 * 5. Re-alloc Implementation
 *
 * Let's say the 'requested size' = new_size
 * 1) new_size < old_size
 * Then another type of coalescing would occur.
 * New header n footer will be made, the size of allocated block will shrunk.
 * 2) new_size > old_size
 * Then we free the allocated block, and then do the function 'malloc'.
 * Also another type of coalescing would occur.
 * 3) new_size = old_size
 * originally allocated block would be returned.
 *
 * 6. Freed list traversal
 * This code traverse the freed list for operations.
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE   4
#define DSIZE   8
#define CHUNKSIZE   (1<<12)

/* Minimum block size */
// #define UNIT    24

#define MAX(x, y)   ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)  (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = val)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((void*)(bp) - WSIZE)
#define FTRP(bp)    ((void*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((void*)(bp) + GET_SIZE(((void*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((void*)(bp) - GET_SIZE(((void*)(bp) - DSIZE)))

/* Given header or footer ptr p, compute the size of block n allocated state */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_STATE(p)    (GET(p) & 0x1)

/* Basic pointer to the first block n first freed block */
void *heap_listp = 0;

/* Initial prototype of helper functions */
void *extend_heap(size_t words);
void place(void *ptr, size_t asize);
void *find_fit(size_t asize);
void *coalesce(void *ptr);

/* Extra helper functions */


/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1){
        return -1;
    }
    
    /* Making prologue & epilogue */
    
    /* Alignment paddign n Prologue : [0 | UNIT/1 | UNIT/1] */
    PUT(heap_listp, 0);
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
    
    /* Epilogue */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));
    heap_listp += (2 * WSIZE);
    
    /* Extend the empty heap w/ free block of CHUNKSIZE bytes */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL){
        return -1;
    }
    
    return 0;
    
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    char *bp;
    size_t asize;
    size_t extend_size;
    
    if(size == 0){
        return NULL;
    }
    
    /* No block can be smaller than UNIT block*/
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    
    /* If no proper fit is found, get more memory */
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size/WSIZE)) == NULL)
        return NULL;
    
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if(ptr == NULL){
        return;
    }
    /* get the block size from ptr */
    size_t size = GET_SIZE(HDRP(ptr));
    
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    size_t oldsize;                                                                        
    void *newptr;                           

    if(ptr == NULL){                                                            
        mm_malloc(size);
        return NULL;
    }

    if(size == 0){                                                              
        mm_free(ptr);                                                           
        return NULL;
    }

    // size_t asize = MAX(ALIGN(size) + DSIZE, DSIZE); 
    oldsize = GET_SIZE(HDRP(ptr));                                               

    // if(oldsize == asize){                                                        
    //     return ptr;
    // }

    // if(asize <= oldsize){                                                            
    //     size = asize;                    

    //     if(oldsize - size <= DSIZE){                    
    //         return ptr;                              
    //     }
    
    //     mm_free(NEXT_BLKP(ptr));                                                             
    //     return ptr;
    // }
    
    newptr = mm_malloc(size);

    if(newptr == NULL){                                    
        return NULL;
    }

    if(size < oldsize){
        oldsize = size;
    }

    memcpy(newptr, ptr, oldsize);                    
    mm_free(ptr);                                  
    return newptr;
}

/* reference in book */
void *extend_heap(size_t words){
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size)) == -1){
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    
    /* new epilogue */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


/* reference in book */
void *coalesce(void *bp){
    size_t prev_alloc = GET_STATE(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_STATE(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if(prev_alloc && next_alloc){
        return bp;
    }
    
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    
    return bp;
}

/* first fit */
void *find_fit(size_t asize){
    void *bp;
    
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if(!GET_STATE(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))){
            return bp;
        }
    }
    return NULL;
}

void place(void *bp, size_t asize){
    
    size_t csize = GET_SIZE(HDRP(bp));
    
    if((csize - asize) >= (2 * DSIZE)){
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else{
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}







