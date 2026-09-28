PROGRAM example_SpriteAttributeAddress;

CONST sprite : ARRAY[0..15] OF BYTE =($FF,$EE,$DD,$CC,$BB,$AA,$99,$88,
                                      $77,$66,$55,$44,$33,$22,$11,$00);

BEGIN
  Screen(5);
  SpriteAttributeAddress($160); { place the table on the visible screen }
  SpriteColor(0,ADDR(sprite));    { fill the table with colors }
  READLN;                             { wait for return }
  Screen(0);
END.
