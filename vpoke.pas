PROGRAM example_VPoke;

VAR counter : BYTE;

BEGIN;
  FOR counter:= 1 TO 255 DO
    VPoke(counter*2,counter);
END.
