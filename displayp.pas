PROGRAM exemplo_DisplayPage;

BEGIN
  Screen(5);
  DisplayPage(0);     { Esta é a configuração padrão!! }
  READLN;             { aguarde retorno }
  DisplayPage(2);
  READLN;             { aguarde retorno }
  Screen(0);
END.
