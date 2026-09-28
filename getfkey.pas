PROGRAM example_GetFkey;

VAR which : INTEGER;

BEGIN
  CLRSCR;
  REPEAT
    which:=GetFkey;
    GOTOXY(1,4);
    IF which<>0 THEN
      WRITELN('You pressed function key ',which,'.   ')
  UNTIL KEYPRESSED;
END.
