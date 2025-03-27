       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONALS.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 NUM1 PIC 9(9).
           01 NUM2 PIC 9(9).
           01 NUM3 PIC 9(5).
           01 NUM4 PIC 9(6).
           01 NEG-NUM PIC S9(9) VALUE -1234.
           01 CLASS1 PIC X(9) VALUE 'ABCD '.
           01 CHECK-VAL PIC 9(3).
             88 PASS VALUES ARE 041 THRU 100.
             88 FAIL VALUES ARE 000 THRU 40.
           01 RESULT PIC 9(10).
           01 TEMP PIC 9(9).

       PROCEDURE DIVISION.
      * INITIALIZE: Sets numeric fields to zeros and alphanumeric to spaces
           INITIALIZE RESULT
           INITIALIZE TEMP

      * MOVE: Copies data from one storage area to another
           MOVE 25 TO NUM1 NUM3.
           MOVE 15 TO NUM2 NUM4.
  
      * COMPUTE: Performs arithmetic operations with operator precedence
           COMPUTE RESULT = NUM1 + NUM2 * 2
           DISPLAY 'COMPUTE RESULT: ' RESULT

      * ADD: Sums two or more numeric values
           ADD NUM1 TO NUM2 GIVING TEMP
           DISPLAY 'ADD RESULT: ' TEMP

      * MULTIPLY: Calculates the product of two numbers
           MULTIPLY NUM1 BY NUM2 GIVING TEMP
           DISPLAY 'MULTIPLY RESULT: ' TEMP

      * DIVIDE: Performs division between numeric values
           DIVIDE NUM1 BY 5 GIVING TEMP
           DISPLAY 'DIVIDE RESULT: ' TEMP

           IF NUM1 > NUM2 THEN
             DISPLAY 'IN LOOP 1 - IF BLOCK'
             IF NUM3 = NUM4 THEN
               DISPLAY 'IN LOOP 2 - IF BLOCK'
             ELSE
               DISPLAY 'IN LOOP 2 - ELSE BLOCK'
             END-IF
           ELSE
             DISPLAY 'IN LOOP 1 -ELSE BLOCK'
           END-IF
  
           MOVE 65 TO CHECK-VAL.
           IF PASS
             DISPLAY 'PASSED WITH 'CHECK-VAL' MARKS.'.
           IF FAIL
             DISPLAY 'FAILED WITH 'CHECK-VAL' MARKS.'.
  
           EVALUATE TRUE
             WHEN NUM1 < 2
               DISPLAY 'NUM1 LESS THAN 2'
             WHEN NUM1 < 19
               DISPLAY 'NUM1 LESS THAN 19'
             WHEN NUM1 < 1000
               DISPLAY 'NUM1 LESS THAN 1000'
           END-EVALUATE.
       STOP RUN.
