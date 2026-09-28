PROGRAM example_search;

VAR x : INTEGER;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  Atrbyt:=12;
  Line(10,10,100,200);           { draw a line in color 12 }
  x:=Search(100,100,12,2);       { search to the left for color 12 }
  READLN;
  Screen(0);
  WRITELN('At y-value 100 the line passes x=',x);
END.
