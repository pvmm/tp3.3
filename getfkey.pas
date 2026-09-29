PROGRAM exemplo_GetFkey;

VAR qual : INTEGER;

BEGIN
  CLRSCR;
  REPEAT
    qual:=GetFkey;
    GOTOXY(1,4);
    IF qual<>0 THEN
      WRITELN('Você pressionou a tecla de função ',qual,'.   ')
  UNTIL KEYPRESSED;
END.
