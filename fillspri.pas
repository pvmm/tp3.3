PROGRAM example_FillSprite;

CONST sprite : ARRAY[0..31] OF BYTE =($FF,$FF,$00,$FF,$00,$C3,$3C,$24,
                                      $24,$24,$C3,$00,$FF,$00,$FF,$FF,
                                      $FF,$FF,$00,$FF,$00,$3B,$44,$44,
                                      $84,$84,$1b,$00,$FF,$00,$FF,$FF);
VAR color : BYTE;

BEGIN
  Screen(5);
  SpriteAttributeAddress($760);
  SpritePatternAddress  ($780);
  SpritePattern(0,ADDR(sprite));
  SpriteSize(3);
  FillSprite(0,4);
  PutSprite(100,100,0,0);
  color:=0;
  REPEAT
    FillSprite(0,color);
    DELAY(50);
    color:=(color+1) mod 15
  UNTIL KEYPRESSED;
  Screen(0);
END.
