PROGRAM example_Sound;

VAR counter : INTEGER;

BEGIN
  Sound(7,63);
  Sound(8,16);
  Sound(11,106);
  Sound(12,246);
  Sound(13,1);
  FOR counter:=4095 DOWNTO 1100 DO
    BEGIN
      Sound(0,counter MOD 256);
      Sound(1,counter DIV 256);
      Sound(7,62)
    END;
END.
