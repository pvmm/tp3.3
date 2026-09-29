PROGRAM example_WriteSector;

VAR content : ARRAY[0..511] OF BYTE;

BEGIN
  ReadSector(0,0,ADDR(content[0]),1);     { read sector 0 }
  READLN;                                { wait for return }
  WriteSector(0,0,ADDR(content[0]),1);    { write sector 0 back }
END.
