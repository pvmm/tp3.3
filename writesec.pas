PROGRAM exemplo_WriteSector;

VAR conteudo : ARRAY[0..511] OF BYTE;

BEGIN
  ReadSector(0,0,ADDR(conteudo[0]),1);     { lê o setor 0 }
  READLN;                                { aguarde retorno }
  WriteSector(0,0,ADDR(conteudo[0]),1);    { escreve o setor 0 de volta }
END.
