PROGRAM exemplo_SpriteAttributeAddress;

CONST sprite : ARRAY[0..15] OF BYTE =($FF,$EE,$DD,$CC,$BB,$AA,$99,$88,
                                      $77,$66,$55,$44,$33,$22,$11,$00);

BEGIN
  Screen(5);
  SpriteAttributeAddress($160); { coloca a tabela na tela visível }
  SpriteColor(0,ADDR(sprite));    { preenche a tabela com cores }
  READLN;                             { aguarde retorno }
  Screen(0);
END.
