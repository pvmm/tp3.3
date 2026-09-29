PROGRAM example_ChangeColor;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  Atrbyt:=8;
  Fillbox (40,40,200,150);
  ChangeColor (8,3,3,3);   { dark gray }
  READLN;
  ChangeColor (8,0,0,7);   { dark blue }
  READLN;
  ChangeColor (8,7,7,7);   { white }
  READLN;
  ChangeColor (8,5,0,0);   { red }
  READLN;
  Screen(0);
END.
