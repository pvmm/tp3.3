PROGRAM example_FWrite;

TYPE str255 = STRING[255];

PROCEDURE FastWrite(sentence : str255);     { Small helper procedure }
VAR msgText : str255;
BEGIN
  msgText:=sentence;
  FWrite(msgText)
END;

BEGIN
  REPEAT
    FastWrite('This sentence is continuously placed on the screen.')
  UNTIL KEYPRESSED;
END.
