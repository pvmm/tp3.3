PROGRAM example_WriteMem;

VAR series : ARRAY [1..5] OF RECORD
                              x : ARRAY[0..49] OF INTEGER;
                              y : BYTE;
                              z : STRING[40]
                            END;

BEGIN
  ClearMem;
  WRITELN(Setmem(5));            { define 5 blocks of 16 KBytes }
  SetChannel(1,17384);
  WriteMem(1,ADDR(series[1]),142);
  READLN;                        { wait for return }
  ClearMem;
END.
