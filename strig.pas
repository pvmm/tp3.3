PROGRAM exemplo_Strig;

CONST botao : ARRAY[0..4] OF STRING[15] = ('botão 0 (espaço)',
                         'botão 1 porta 1','botão 1 porta 2',
                         'botão 2 porta 1','botão 2 porta 2');

VAR contador : BYTE;
         k : CHAR;

BEGIN
  CLRSCR;
  REPEAT
    k:=' ';
    GOTOXY(1,1);
    FOR contador:=0 TO 4 DO
      WRITELN(botao[contador],'=',Strig(contador));
    IF KEYPRESSED THEN READ(KBD,k)
  UNTIL k=#13;
END.
