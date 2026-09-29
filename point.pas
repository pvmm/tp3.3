PROGRAM exemplo_Point;

VAR cor : INTEGER;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  Atrbyt:=8;
  Pset(100,100);               { define um pixel, veja PSET }
  cor:=Point(100,100);
  READLN;
  Screen(0);
  WRITELN('A cor é:',cor);
END.
