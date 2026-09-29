PROGRAM exemplo_VPeek;

VAR contador : INTEGER;

BEGIN
  FOR contador:=0 TO 239 DO
    WRITE (CHR(VPeek(contador)));
END.
