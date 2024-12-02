# Bilateral symmetry
My son, at a loose end after A-levels, asked me for a mental challenge, As we’d been discussing palindromes, I suggested he try to find an arrangement of the digits 1 to 9 with the multiplication symbol “x” to give a palindrome as the answer, and he came up with 29678x1453 = 43122134.

I said “Now try to find the smallest such palindromic product starting in 4, where the last digit of the smallest number is still 3”. He found that smallest product, and, interestingly, if he added the two smaller numbers instead of multiplying them, then added 100, he also go a palindrome. 

### What was the smallest product?
The answer given by the newspaper was 40699604.

## Prolog programming
I used Prolog language to solve the Bilateral symmetry to print out the answer of 40699604. Initially, this program should print [[1,7,6,9,5,4,8],[2,3]]. After pressing NEXT, it should print [[2,3],[1,7,6,9,5,4,8]]. (Or perhaps these are printed the other way around.) Either way, after pressing NEXT again, it should print nothing more. The correct answer may then be calculated as 23 × 1769548 = 40699604. 

Three testers in tests file ensure that your code can run correctly.
