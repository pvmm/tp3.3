PROGRAM example_Strig;

CONST button : ARRAY[0..4] OF STRING[15] = ('button 0 (space)',
                         'button 1 port 1','button 1 port 2',
                         'button 2 port 1','button 2 port 2');

VAR counter : BYTE;
         k : CHAR;

BEGIN
  CLRSCR;
  REPEAT
    k:=' ';
    GOTOXY(1,1);
    FOR counter:=0 TO 4 DO
      WRITELN(button[counter],'=',Strig(counter));
    IF KEYPRESSED THEN READ(KBD,k)
  UNTIL k=#13;
END.
