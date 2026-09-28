PROGRAM example_time;

VAR hour,min,sec : BYTE;

BEGIN
  Time(hour,min,sec);
  WRITELN('It is now ',hour,' hours ',min,' minutes and ',sec,
          ' seconds.   ');
END.
