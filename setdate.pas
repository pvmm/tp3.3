PROGRAM exemplo_SetDate;

VAR ano              : INTEGER;
    mes,dia,diasemana : BYTE;
    sucesso           : BOOLEAN;

BEGIN
  REPEAT
    CLRSCR;
    WRITELN('dia (1..31):');
    READLN(dia);
    WRITELN('mês (1..12):');
    READLN(mes);
    WRITELN('ano :');
    READLN(ano);
    sucesso:=SetDATE(ano,mes,dia);
  UNTIL sucesso;
END.
