PROGRAM exemplo_WriteMem;

VAR serie : ARRAY [1..5] OF RECORD
                              x : ARRAY[0..49] OF INTEGER;
                              y : BYTE;
                              z : STRING[40]
                            END;

BEGIN
  ClearMem;
  WRITELN(Setmem(5));            { define 5 blocos de 16 KBytes }
  SetChannel(1,17384);
  WriteMem(1,ADDR(serie[1]),142);
  READLN;                        { aguarde retorno }
  ClearMem;
END.
