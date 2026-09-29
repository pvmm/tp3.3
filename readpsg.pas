PROGRAM example_ReadPSG;

VAR counter : BYTE;

BEGIN
  FOR counter:=0 TO 13 DO
    WRITELN('Register ',counter,' contains the value ',ReadPSG(counter));
END.
