PROGRAM example_ScreenOn_Off;

VAR counter  : BYTE;

BEGIN
  Screen(7);
  ScreenOff;
  Actpage:=0;
  FOR counter:=1 TO 100 DO
    BEGIN
      Atrbyt:=random(255);
      FastBox(random(512),random(212),random(512),random(212))
    END;
  ScreenOn;
  READLN;                         { wait for return }
  Screen(0);
END.
