PROGRAM Example_SetMem;

VAR numBlocks : BYTE;

BEGIN
  ClearMem;
  numBlocks:=SetMem(10);
  READLN;                       { wait for return }
  ClearMem;
END.
