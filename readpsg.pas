PROGRAM exemplo_ReadPSG;

VAR contador : BYTE;

BEGIN
  FOR contador:=0 TO 13 DO
    WRITELN('Registrador ',contador,' contém o valor ',ReadPSG(contador));
END.
