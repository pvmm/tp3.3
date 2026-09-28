PROGRAM example_GetPdl;

VAR port1,port2 : BOOLEAN;
    i           : INTEGER;

FUNCTION Paddle (n : INTEGER) : INTEGER;
VAR value : INTEGER;
BEGIN
  value:=GetPdl(n);
  Paddle:=value-(value AND 128) SHL 1
END;

BEGIN
  FOR i := 0 TO 100 DO
  BEGIN
    WRITELN( Paddle(1) );
  END;
END.
