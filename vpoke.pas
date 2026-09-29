PROGRAM exemplo_VPoke;

VAR contador : BYTE;

BEGIN;
  FOR contador:= 1 TO 255 DO
    VPoke(contador*2,contador);
END.
