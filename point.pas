PROGRAM example_Point;

VAR color : INTEGER;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  Atrbyt:=8;
  Pset(100,100);               { set a pixel see PSET }
  color:=Point(100,100);
  READLN;
  Screen(0);
  WRITELN('The color is:',color);
END.
