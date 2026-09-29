VAR porta1, porta2: BOOLEAN;
    x, y: INTEGER;

PROCEDURE Conectado(VAR um,dois : BOOLEAN);
VAR contador : BYTE;
BEGIN
  um :=FALSE;
  dois:=FALSE;
  FOR contador:=0 TO 9 DO
  BEGIN
    IF (GetPad(12)=-1) AND ((GetPad(13)<>GetPad(14)) OR (GetPad(13)=0) OR
       (GetPad(14)=0)) THEN um:=TRUE;
    IF (GetPad(16)=-1) AND ((GetPad(17)<>GetPad(18)) OR (GetPad(17)=0) OR
       (GetPad(18)=0)) THEN dois:=TRUE
   END
 END;

BEGIN
  Conectado(porta1,porta2);
  x:=0;
  y:=0;
  CLRSCR;
  IF porta1 THEN WRITELN('Um mouse está conectado à porta 1.');
  IF porta2 THEN WRITELN('Um mouse está conectado à porta 2.');
  REPEAT
    GOTOXY(1,5);
    IF (porta1) AND (GetPad(12)=-1) THEN
    BEGIN
      x:=x+GetPad(13);
      y:=y+GetPad(14)
    END;
    IF (porta2) AND (GetPad(16)=-1) THEN
    BEGIN
      x:=x+GetPad(17);
      y:=y+GetPad(18)
    END;
    WRITELN(x:6,':',y:6)
  UNTIL KEYPRESSED;
END.
