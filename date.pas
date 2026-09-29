PROGRAM Exemplo_Date;

CONST diasSemana : ARRAY[0..6] OF STRING[9]=
               ('domingo','segunda','terca','quarta','quinta',
                'sexta','sabado');
      meses : ARRAY[1..12] OF STRING[9]=
               ('janeiro','fevereiro','marco','abril','maio','junho',
                'julho','agosto','setembro','outubro','novembro',
                'dezembro');

VAR ano              : INTEGER;
    mes,dia,diasemana : BYTE;

BEGIN
  Date(ano,mes,dia,diasemana);
  WRITELN('Hoje é ',diasSemana[diasemana],' ',dia,' ',meses[mes],
          ' ',ano);
END.
