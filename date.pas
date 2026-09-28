PROGRAM Example_Date;

CONST weekdays : ARRAY[0..6] OF STRING[9]=
               ('Sunday','Monday','Tuesday','Wednesday','Thursday',
                'Friday','Saturday');
      months : ARRAY[1..12] OF STRING[9]=
               ('January','February','March','April','May','June',
                'July','August','September','October','November',
                'December');

VAR year              : INTEGER;
    month,day,weekday : BYTE;

BEGIN
  Date(year,month,day,weekday);
  WRITELN('Today is ',weekdays[weekday],' ',day,' ',months[month],
          ' ',year);
END.
