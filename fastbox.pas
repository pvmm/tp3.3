PROGRAM exemplo_FastBox;

BEGIN
  Screen(5);
  Actpage:=0;
  Atrbyt:=255;            {  (frente * 16)+fundo }
  FastBox(10,30,250,190);
  READLN;                 { aguarde retorno }
  Screen(0);
END.
