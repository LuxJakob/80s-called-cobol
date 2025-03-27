       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARS.

       DATA DIVISION.
           *> working storage defines variables
           WORKING-STORAGE SECTION.
           *> 9  - numeric
           *> A  - alphabetic
           *> X  - alphanumeric
           *> V  - decimal
           *> S  - sign
           *> 01 - top level variables
           *> 05 - group level variables
           01 EMPTY-VAR PIC S9(3)V9(2).
           01 DEC-VAR PIC S9(3)V9(2) VALUE -123.45.
           01 TEXT-VAR PIC A(6) VALUE 'ABCDEF'.
           01 MIXED-VAR PIC X(15) VALUE '12@4A!D$'.
           01 GROUP-VAR.
             05 SUBVAR-1 PIC 9(4) VALUE 1337.
             05 SUBVAR-2 PIC X(9) VALUE ' - Lorem '.
             05 SUBVAR-3 PIC A(6) VALUE 'ipsum '.
             05 SUBVAR-4 PIC A(20) VALUE 'dolor'.
      
           *> print our variables
       PROCEDURE DIVISION.
           DISPLAY "Not declared var: "EMPTY-VAR.
           DISPLAY "Decimal var: "DEC-VAR.
           DISPLAY "Text var: "TEXT-VAR.
           DISPLAY "Mixed var: "MIXED-VAR.
           DISPLAY "Group var: "GROUP-VAR.
           STOP RUN.
