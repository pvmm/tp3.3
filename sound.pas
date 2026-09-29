PROGRAM exemplo_Sound;

VAR contador : INTEGER;

BEGIN
  Sound(7,63);
  Sound(8,16);
  Sound(11,106);
  Sound(12,246);
  Sound(13,1);
  FOR contador:=4095 DOWNTO 1100 DO
    BEGIN
      Sound(0,contador MOD 256);
      Sound(1,contador DIV 256);
      Sound(7,62)
    END;
END.
