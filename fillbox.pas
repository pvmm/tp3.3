PROGRAM example_FillBox;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  Atrbyt:=15;
  FillBox(30,30,70,90);
  READLN;                { wait for return }
  Screen(0);
END.
