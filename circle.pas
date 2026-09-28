PROGRAM example_Circle;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  Atrbyt:=15;
  Circle(100,100,50);
  READLN;               { wait for return }
  Screen(0);
END.
