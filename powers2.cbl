       identification division.
       program-id. prog.
       environment division.
       data division.
       working-storage section.
           77 n pic 9(2) value 15.
           77 i pic 9(2).
      *    77 r pic 9(9).
           77 r pic Z(9)9.
       procedure division.
       display "Input how many powers of 2 to show."
       accept n
       display i
       move 0 to i
       display i
       perform until i greater than n
               compute r = 2**i
               display r
               display '2 to the power of ' i ' is ' r
               add 1 to i
       end-perform
       stop run.
