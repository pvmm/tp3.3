VAR port1, port2: BOOLEAN;
    x, y: INTEGER;

PROCEDURE Connected(VAR one,two : BOOLEAN);
VAR counter : BYTE;
BEGIN
  one :=FALSE;
  two:=FALSE;
  FOR counter:=0 TO 9 DO
  BEGIN
    IF (GetPad(12)=-1) AND ((GetPad(13)<>GetPad(14)) OR (GetPad(13)=0) OR
       (GetPad(14)=0)) THEN one:=TRUE;
    IF (GetPad(16)=-1) AND ((GetPad(17)<>GetPad(18)) OR (GetPad(17)=0) OR
       (GetPad(18)=0)) THEN two:=TRUE
   END
 END;

BEGIN
  Connected(port1,port2);
  x:=0;
  y:=0;
  CLRSCR;
  IF port1 THEN WRITELN('A mouse is connected to port 1.');
  IF port2 THEN WRITELN('A mouse is connected to port 2.');
  REPEAT
    GOTOXY(1,5);
    IF (port1) AND (GetPad(12)=-1) THEN
    BEGIN
      x:=x+GetPad(13);
      y:=y+GetPad(14)
    END;
    IF (port2) AND (GetPad(16)=-1) THEN
    BEGIN
      x:=x+GetPad(17);
      y:=y+GetPad(18)
    END;
    WRITELN(x:6,':',y:6)
  UNTIL KEYPRESSED;
END.
