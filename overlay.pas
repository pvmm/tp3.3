{$A-}

TYPE Str63 = STRING[12];

VAR Maximo: INTEGER;
    EnderecoBaseOverlay: ARRAY[0..1] OF LONGINT;

procedure _OverlayProc0_2(Maximo: INTEGER); forward;

overlay
procedure OverLayProc0_1(Maximo: INTEGER);
begin
   writeln('Overlay 0--rotina 1 ',Maximo);

   if Maximo < 2 then _OverlayProc0_2(Maximo+1);

   writeln('Overlay 0, rotina 1 ',Maximo);
end;

overlay
procedure OverLayProc0_2(Maximo: INTEGER);
begin
   writeln('Overlay 0--rotina 2 ',Maximo);

   if Maximo < 2 then OverlayProc0_1(Maximo+1);

   writeln('Overlay 0, rotina 2 ',Maximo);
end;

procedure _OverlayProc0_2;
begin
   OverlayProc0_2(Maximo);
end;

procedure Dummy_0;
begin
end;

overlay
procedure OverLayProc1_1;
begin
   writeln('Overlay 1, rotina 1');
end;

overlay
procedure OverLayProc1_2;
begin
   writeln('Overlay 1, rotina 2');
end;

overlay
function InverteString(S: Str63): Str63;
var C: CHAR;
begin
   if length(S) = 0 then exit;

   if length(S) = 1 then
   begin
      InverteString:=S;
      exit;
   end;

   C:=S[1];

   InverteString:=InverteString(copy(S,2,length(S))) + C;
end;

procedure ManipulaOverlay(Endereco: INTEGER; Pos: LONGINT; TamDados: INTEGER;
			 NumOverlay: INTEGER; VAR Nome: Str63);
begin
   writeln('ManipulaOverlay ',NumOverlay,' ',Pos,' - ',TamDados,' ',Nome);
   setchannel(0,EnderecoBaseOverlay[NumOverlay] + Pos);
   readmem(0,Endereco,TamDados);

   if (pos = 0) and (overlaynum = 0) then
   begin
      OverlayProc1_1;
      OverlayProc1_2;
   end;
end;

begin
   Maximo:=SetMem(1);

   if Maximo < 1 then
   begin
      writeln('Memória insuficiente');
      halt;
   end;

   writeln('SetChannel');
   SetChannel(0,0);
   EnderecoBaseOverlay[0]:=GetChannel(0);

   writeln('MemReadFile overlay 0');
   MemReadFile(0,0,102400,'overlay.000');

   if GetError <> 0 then
   begin
      writeln('Erro ao ler arquivo de overlay');
      halt;
   end;

   EnderecoBaseOverlay[1]:=GetChannel(0);

   writeln('MemReadFile overlay 1');

   MemReadFile(0,0,102400,'overlay.001');

   if GetError <> 0 then
   begin
      writeln('Erro ao ler arquivo de overlay');
      halt;
   end;

   writeln('Overlay 0 EnderecoBase: ',EnderecoBaseOverlay[0]);
   writeln('Overlay 1 EnderecoBase: ',EnderecoBaseOverlay[1]);

   writeln('OverlayPTR');
   OverlayPTR:=ADDR(ManipulaOverlay);

   writeln('Frits Hilderink');

   writeln(InverteString('Frits Hilderink'));

end.
