PROGRAM exemplo_SetChannel;

BEGIN
  ClearMem;
  WRITELN(SetMem(2));
  SetChannel(1,0);
  READLN;                       { aguarde retorno }
  ClearMem;
END.
