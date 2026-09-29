PROGRAM exemplo_time;

VAR hora,min,seg : BYTE;

BEGIN
  Time(hora,min,seg);
  WRITELN('Agora são ',hora,' horas ',min,' minutos e ',seg,
          ' segundos.   ');
END.
