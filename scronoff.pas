PROGRAM exemplo_ScreenOn_Off;

VAR contador  : BYTE;

BEGIN
  Screen(7);
  ScreenOff;
  Actpage:=0;
  FOR contador:=1 TO 100 DO
    BEGIN
      Atrbyt:=random(255);
      FastBox(random(512),random(212),random(512),random(212))
    END;
  ScreenOn;
  READLN;                         { aguarde retorno }
  Screen(0);
END.
