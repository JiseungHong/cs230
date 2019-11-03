/* Insert bp to the fee - list */
/* Make sure bp becomes start of the freelist */
static void _insert(void *bp){
    NEXT_FRBP(bp) = free_listp;
    PREV_FRBP(free_listp) = bp;
    PREV_FRBP(bp) = NULL;
    free_listp = bp; 
}

static void _remove(void *bp){
    if(PREV_FRBP(bp)){
        NEXT_FRBP(PREV_FRBP(bp)) = NEXT_FRBP(bp);
    }

    else{
        free_listp = NEXT_FRBP(bp);
    }

    PREV_FRBP(NEXT_FRBP(bp)) = PREV_FRBP(bp);
}


/////////////////////////////////



/* Given block ptr bp, compute address of next and previous freed blocks */
#define NEXT_FRBP(bp) (*(void **)(bp + DSIZE))
#define PREV_FRBP(bp) (*(void **)(bp))