/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses ISO/IEC 10646 (2nd ed., published 2011-03-15) /
   Unicode 6.0.  */
/* We do not support C11 <threads.h>.  */
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
    
  // use De morgan's law    
  return ~(~x|~y);
}
/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
    
    // Since 1byte is equal to 8bits,
    int res = x>>(n<<3);
    
    // Then we drag it too the least significant 1byte
    return (0xFF&res);
}
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
    
    // bits that turned it to 1 b/c of the
    // arithmatic shift, should become 0 by using & op.
    int y = ~(((0x80<<24) >> n) << 1);
    return (x>>n) & y;
}
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
    
    // divide and conquer in a period of 8
    int mask = 0x01 + (0x01<<8) + (0x01<<16) + (0x01<<24);
    
    // Each of 8bytes shows the values of bitcounts in it
    int res = (x&mask) + ((x>>1)&mask) + ((x>>2)&mask) + ((x>>3)&mask) + ((x>>4)&mask) + ((x>>5)&mask) + ((x>>6)&mask) + ((x>>7)&mask);
    
    // we all put together like this b/c it never overs 32
    return (0xFF&res) + (0xFF&(res>>8)) + (0xFF&(res>>16)) + (0xFF&(res>>24));
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
    
    // divide and conquer
    // find if it has 1 in it
    x = x | (x >> 16);
    x = x | (x >> 8);
    x = x | (x >> 4);
    x = x | (x >> 2);
    x = x | (x >> 1);
    return (x&0x01)^0x01;
}
/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
  return 0x01<<31;
}
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
    
    // range is the range of n in two's
    // complement, but not exactly same.
    // it is only to manipulate x with the 
    // satisfying condition.
    int range = ~n +33;
    
    // if x is in range, below two values 
    // must be equal.
    return !(x^((x<<range)>>range));
}
/*
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n) {
    
    //check if it is negative value
    int isNegative = (x >> 31);
    
    // if it is negative value, then we must add
    // 1 at the end and at the nth spot to make 'shift' activate properly.
    return (x + (((isNegative & 0x01)<<n) + isNegative))>>n;
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
    
    // intuitive... nothing to write
    return ~x+1;
}
/* 
 * isPositive - return 1 if x > 0, return 0 otherwise 
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 3
 */
int isPositive(int x) {
    
    // First check if the significant bit is 0
    // Next check if it is not 0
    return (~((x >> 31)&0x01)+2) & !(!x);
}
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
    
    // msb of x,y respectively
    int msbx = 0x01&(x>>31);
	int msby = 0x01&(y>>31);
	
	// check if it is different sign
	int diffsign = msbx^msby;
	
	// check if x is positive or zero while y is negative
	int positive = (!msbx)&msby;
	
	// check all conditions
	// if it is different sign, it returns 1 only when
	// y is positive
	// else if it is same sign, it returns 1 only when
	// y-x has msb of 0. Also this case overflow does
	// not occur.
	return !((diffsign&positive)|((!diffsign)&((((~x)+1+y)>>31)&(0x01))));
}
/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
int ilog2(int x) {
    int res = (!!(x >> 0x10)) << 4;
    
    // if res == 0x10, we don't mind the
    // lower bits than 16th MSB of x ( ignore & go on )
    res = res + ((!!(x >> (res + 0x08))) << 3);
    
    // this follows the same logic above
    res = res + ((!!(x >> (res + 0x04))) << 2);
    res = res + ((!!(x >> (res + 0x02))) << 1);
    res = res + (!!(x >> (res + 0x01)));
    return res;
}
/* 
 * float_neg - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_neg(unsigned uf) {
    
    // Lets specify s, exp, frac in floating point representation
    unsigned s = uf & 0x80000000U;
    unsigned exp = uf & 0x7F800000U;
    unsigned frac = uf & 0x007FFFFFU;
    
    // exp = 111....1 and frac = 000....0 --> NaN
    if((exp == 0x7F800000U) && (frac != 0x00U))  return uf;
    else{
        
        // minus it
        s = ~s + 0x80000001U;
    }
    return s + exp + frac;
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
    
    // s value will be same between int and float
    // We have to make the integer postive to
    // calculate the fractions and exponentials.
    unsigned s = x & 0x80000000;
    
    // Some tricky values are to be initialized
    if(x == 0x00) return x;
    else if(x == 0x80000000) return 0xcf000000;
    
    if(s == 0x80000000) x = ~x+1;

    // By using while statement, we can 
    // find the value of E. This is because
    // I made the x positive.
    int mask1 = 0x80000000;
    int E = 0x1F;
    while(!(x & mask1)){
        x = x << 0x01;
        E--;
    }
    
    // since fraction consists of 23 bytes, some of the
    // bytes lower than it could carry will vanish. Here
    // we have to use the nearest even rule to make it 
    // correct.
    
    unsigned frac = (x & 0x7FFFFF00) >> 8;
    if((x & 0x1FF) == 0x180 || (x & 0x0FF) > 0x80){
        frac += 0x01;
    }
    
    // Assign exp using bias 127
    unsigned exp = (E+127) << 23;
    
    return s + exp + frac;
}
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
    
    // if the value if 0x00, twice the value
    // also will be zero. so, it follows like...
    if(uf==0x00||uf==0x80000000) return uf;
    
    // NaN always has to be knocked off
    else if(((uf>>23)&0xFF)==0xFF) return uf;
    
    // sign bit are same and fractions << 1
    // when exps are all 0. --> very small values
    else if(((uf>>23)&0xFF)==0x00) return (uf<<1)+(uf&(1<<31));
    
    // No exceptions --> too easy : exp += 1;
    else return uf + (1<<23);
}