PROGRAM exemplo_LoadPicture;

BEGIN
  Screen(5);
  LoadPicture(0,0,0,'GIOSDEMO.SC5');
  READLN;                            { aguarde retorno }
  Screen(0);
END.
