PROGRAM exemplo_search;

VAR x : INTEGER;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  Atrbyt:=12;
  Line(10,10,100,200);           { desenha uma linha na cor 12 }
  x:=Search(100,100,12,2);       { procura para a esquerda pela cor 12 }
  READLN;
  Screen(0);
  WRITELN('No valor y 100 a linha passa por x=',x);
END.
