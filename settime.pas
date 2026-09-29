PROGRAM exemplo_SetTime;

VAR hora,min,seg : BYTE;
    sucesso      : BOOLEAN;

BEGIN
  REPEAT
    CLRSCR;
    WRITE('hora (0..23):');
    READLN(hora);
    WRITE('minutos (0..59):');
    READLN(min);
    WRITE('segundos (0..59):');
    READLN(seg);
    sucesso:=SetTime(hora,min,seg);
  UNTIL sucesso;
END.
