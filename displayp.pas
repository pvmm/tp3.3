PROGRAM example_DisplayPage;

BEGIN
  Screen(5);
  DisplayPage(0);     { This is the default setting!! }
  READLN;             { wait for return }
  DisplayPage(2);
  READLN;             { wait for return }
  Screen(0);
END.
