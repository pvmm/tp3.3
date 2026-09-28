PROGRAM example_VPeek;

VAR counter : INTEGER;

BEGIN
  FOR counter:=0 TO 239 DO
    WRITE (CHR(VPeek(counter)));
END.
