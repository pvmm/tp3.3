PROGRAM example_ReadSector;

VAR buffer : ARRAY[0..512] OF BYTE;
    counter : BYTE;

BEGIN
  ReadSector(0,0,ADDR(buffer[0]),1);
  FOR counter:=0 TO 511 DO
    WRITE(CHR(buffer[counter]),' ');
END.
