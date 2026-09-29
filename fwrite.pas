PROGRAM exemplo_FWrite;

TYPE str255 = STRING[255];

PROCEDURE FastWrite(frase : str255);     { Procedimento auxiliar pequeno }
VAR textoMsg : str255;
BEGIN
  textoMsg:=frase;
  FWrite(textoMsg)
END;

BEGIN
  REPEAT
    FastWrite('Esta frase é colocada na tela continuamente.')
  UNTIL KEYPRESSED;
END.
