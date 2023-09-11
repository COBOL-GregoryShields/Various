       IDENTIFICATION DIVISION.
       PROGRAM-ID. TWODT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AGE PIC 9(2) value 99.

       PROCEDURE DIVISION. 
       EVALUATE AGE
           WHEN 0 THRU 9
               DISPLAY 'CHILDREN'

           WHEN 10 THRU 17
               DISPLAY 'ADOLESCENTS'

           WHEN 20 THRU 45
               DISPLAY  'ADULTS'

           WHEN 46 THRU 59
               DISPLAY  'MIDDLE AGE'

           WHEN 60 THRU 100
               ADD 1 TO AGE
               ON SIZE ERROR

          DISPLAY 'ERROR OF SIZE'
          DISPLAY  'OLD'

          WHEN OTHER
               DISPLAY  'YOU ARE A MIRACLE'

           END-EVALUATE.
           STOP RUN.


