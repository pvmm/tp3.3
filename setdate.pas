PROGRAM example_SetDate;

VAR year              : INTEGER;
    month,day,weekday : BYTE;
    success           : BOOLEAN;

BEGIN
  REPEAT
    CLRSCR;
    WRITELN('day (1..31):');
    READLN(day);
    WRITELN('month (1..12):');
    READLN(month);
    WRITELN('year :');
    READLN(year);
    success:=SetDATE(year,month,day);
  UNTIL success;
END.
