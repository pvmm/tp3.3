PROGRAM Exemplo_SetMem;

VAR numBlocos : BYTE;

BEGIN
  ClearMem;
  numBlocos:=SetMem(10);
  READLN;                       { aguarde retorno }
  ClearMem;
END.
