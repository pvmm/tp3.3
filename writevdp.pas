PROGRAM exemplo_WriteVDP;

VAR contador,dados : BYTE;

BEGIN
  FOR contador:=1 TO 20 DO
  WRITELN('Exemplo com WRITEVDP');
  dados:=0;
  REPEAT
    WriteVDP(23,dados);
    dados:=(dados+1) mod 8;
    DELAY(2)                    { Pausa curta }
  UNTIL KEYPRESSED;
  WriteVDP(23,0);
END.
