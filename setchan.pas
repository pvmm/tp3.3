PROGRAM example_SetChannel;

BEGIN
  ClearMem;
  WRITELN(SetMem(2));
  SetChannel(1,0);
  READLN;                       { wait for return }
  ClearMem;
END.
