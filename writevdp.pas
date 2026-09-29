PROGRAM example_WriteVDP;

VAR counter,data : BYTE;

BEGIN
  FOR counter:=1 TO 20 DO
  WRITELN('Example with WRITEVDP');
  data:=0;
  REPEAT
    WriteVDP(23,data);
    data:=(data+1) mod 8;
    DELAY(2)                    { Short pause }
  UNTIL KEYPRESSED;
  WriteVDP(23,0);
END.
