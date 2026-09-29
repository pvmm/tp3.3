PROGRAM exemplo_GCopy;

BEGIN
  Screen(5);
  Actpage:=0;
  Logopr:=0;
  GCopy (10,10,100,200,0,0,2);
  READLN;                        { aguarde retorno }
  Screen(0);
END.
