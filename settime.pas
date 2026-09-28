PROGRAM example_SetTime;

VAR hour,min,sec : BYTE;
    success      : BOOLEAN;

BEGIN
  REPEAT
    CLRSCR;
    WRITE('hour (0..23):');
    READLN(hour);
    WRITE('minutes (0..59):');
    READLN(min);
    WRITE('seconds (0..59):');
    READLN(sec);
    success:=SetTime(hour,min,sec);
  UNTIL success;
END.
