PROGRAM exemplo_GetPdl;

VAR porta1,porta2 : BOOLEAN;
    i             : INTEGER;

FUNCTION Paddle (n : INTEGER) : INTEGER;
VAR valor : INTEGER;
BEGIN
  valor:=GetPdl(n);
  Paddle:=valor-(valor AND 128) SHL 1
END;

BEGIN
  FOR i := 0 TO 100 DO
  BEGIN
    WRITELN( Paddle(1) );
  END;
END.
