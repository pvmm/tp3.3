PROGRAM exemplo_ChangeColor;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  Atrbyt:=8;
  Fillbox (40,40,200,150);
  ChangeColor (8,3,3,3);   { cinza escuro }
  READLN;
  ChangeColor (8,0,0,7);   { azul escuro }
  READLN;
  ChangeColor (8,7,7,7);   { branco }
  READLN;
  ChangeColor (8,5,0,0);   { vermelho }
  READLN;
  Screen(0);
END.
