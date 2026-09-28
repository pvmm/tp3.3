PROGRAM example_LoadPicture;

BEGIN
  Screen(5);
  LoadPicture(0,0,0,'GIOSDEMO.SC5');
  READLN;                            { wait for return }
  Screen(0);
END.
