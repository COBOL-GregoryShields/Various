       IDENTIFICATION DIVISION.
       PROGRAM-ID. array-subscript.

       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01 WS-SUB           PIC 9(04).
       01 WS-CLASS.
          03 WS-STUDENT OCCURS 2 TIMES.
             05 WS-ROLL-NO PIC X(03).
             05 WS-NAME    PIC X(10).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      * Initialize subscript to 1.
         MOVE 1             TO WS-SUB.
         MOVE "001FREDDY"  TO WS-STUDENT (WS-SUB).

      * Increment subscript by 1.
         COMPUTE WS-SUB = WS-SUB + 1.
         MOVE "002JOHNNNNNNY"  TO WS-STUDENT (WS-SUB).

      * Display full table using PERFORM.
         PERFORM VARYING WS-SUB FROM 1 BY 1 UNTIL WS-SUB > 2
            DISPLAY "Student: " WS-SUB " - " WS-STUDENT(WS-SUB)
         END-PERFORM.

         STOP RUN.
      *-----------------------------------------------------------------


