PROGRAM exemplo_ReadSector;

VAR buffer : ARRAY[0..512] OF BYTE;
    contador : BYTE;

BEGIN
  ReadSector(0,0,ADDR(buffer[0]),1);
  FOR contador:=0 TO 511 DO
    WRITE(CHR(buffer[contador]),' ');
END.
