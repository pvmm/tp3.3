# Turbo Pascal 3.3f para MSX-DOS (tradução em português brasileiro)

> **Arquivado.** Esta tradução em português brasileiro está agora arquivada e
> não é mais atualizada. A versão original em holandês está preservada no
> branch `original`.

Compilador Z80 TURBO Pascal, Versão 3.3.

## Autor e direitos autorais

- Autor da versão MSX-DOS/MSX-2 (3.3x/3.3f), incluindo o GIOS
  (sistema de E/S gráfica) e a versão de desenvolvimento cruzado para PC:
  **Frits Hilderink**, também conhecido como **MCE**.
- Distribuído através do **MSX Computer Club Enschede** (Holanda).
- Banner de direitos autorais original do compilador:

  ```text
  Z80 TURBO Pascal compiler,             Version 3.3

  Copyright (C) MSX computer club Enschede, '93-'96
  ```

  (veja `document.txt`, seção 17.1; anos **1993–1996**)
- O nome do autor também aparece neste próprio arquivo:
  `overlay.pas` imprime `Frits Hilderink` em sua demonstração de overlay.

## O que é isto?

O Turbo Pascal 3 da Borland (1983) foi a última versão direcionada ao CP/M.
Como o MSX-DOS é compatível com CP/M, o Turbo Pascal 3 roda no MSX, e
tornou-se o compilador Pascal mais bem suportado na plataforma. Frits Hilderink
fez o patch e a instalação para o MSX-2: suporte completo a arquivos
MSX-DOS/MSX-DOS 2, um runtime consciente do MSX, e a biblioteca GIOS dando
aos programas Pascal acesso a gráficos MSX, sprites, som (PSG), memory mapper,
relógio, joystick/mouse (`GetPad`/`GetPdl`), funções DOS independentes de
RS-232, e mais, além de uma versão para PC para compilação cruzada.

Este diretório (`turbo33f`) **não** é a distribuição oficial 3.3f —
é apenas uma **tradução em português brasileiro** dela (veja [Sobre esta cópia](#sobre-esta-cópia)
e [Conteúdo do repositório](#conteúdo-do-repositório) abaixo). A distribuição
oficial (`turbo33f.zip`, hospedada com a permissão do autor) está linkada
em [Fontes e leitura adicional](#fontes-e-leitura-adicional).

## Sobre esta cópia

O manual e os programas de exemplo foram originalmente escritos em **holandês**.
Nesta cópia, eles foram traduzidos para **português brasileiro**
(identificadores de programa convertidos para nomes Pascal válidos em
português; nomes de API GIOS/Turbo Pascal como `Actpage`, `Atrbyt`, `Logopr`,
`FillBox`, `SpriteColor` mantidos inalterados; nomes de arquivos dentro dos
programas mantidos inalterados). O arquivo `document.txt` também foi convertido
de sua codificação original ISO-8859-1 (Latin-1) para UTF-8. Os binários
`.com`/`.sys`/`.tsr` estão intactos.

`contents.txt` era anteriormente `inhoud.txt` (`inhoud` = "conteúdo" em holandês).

## Conteúdo do repositório

### Manual e documentação

- `document.txt` — o manual completo do Turbo Pascal + GIOS, ~13.800 linhas,
  UTF-8 (traduzido do holandês; originalmente ISO-8859-1). Os capítulos 1–17
  cobrem a linguagem Turbo Pascal 3; o capítulo 18 e os apêndices H–L cobrem
  as adições do GIOS, extensões DOS 1/2 e códigos de erro.
- `contents.txt` — índice de `document.txt` (traduzido).
- `README.md` — este arquivo.

### Compilador e toolchain

- `turbo.com` — o compilador Z80 Turbo Pascal 3.3 em si.
- `tp3.exe` — executável do compilador cruzado para PC (MS-DOS).
- `turbopc.bat` — script de build para PC: executa `tp3` nas fontes fornecidas
  e junta `runtime.com` com o arquivo `.chn` resultante em um `.com`.
- `runtime.com` — runtime unido a programas compilados em builds para PC.
- `overlay.pas` — programa de demonstração de overlay (imprime `Frits Hilderink`).
- `command.com`, `command2.com` — shells de comando incluídos no pacote.
- `msxdos.sys`, `msxdos2.sys` — arquivos de sistema MSX-DOS 1 / DOS 2.
- `compress.com`, `crunch.com`, `dos2cash.com` —
  pequenos utilitários incluídos (finalidade exata não documentada neste arquivo).
- `tr.com` — TsrLoad: carrega um programa TSR (terminate-and-stay-resident).
- `tk.com` — TsrKill: descarrega um programa TSR previamente carregado.
- `memman.com` — auxiliar de gerenciador de memória.
- `msxdebug.com` — auxiliar de depurador.
- `getrom.bas` — programa MSX-BASIC que extrai as ROMs da máquina
  (BIOS, BASIC, Disk-ROM, sub-ROM MSX-2) para uso em emuladores.

### Biblioteca GIOS

- `gios.com` — biblioteca GIOS, versão em disco.
- `gios.tsr` — biblioteca GIOS, versão residente em memória (TSR).

### Executando o compilador cruzado para PC (`tp3.exe`) no DOSBox

`tp3.exe` é o compilador cruzado hospedado no PC: um programa MS-DOS que roda
em um PC (incluindo sob DOSBox) e gera código Z80 para MSX. Seu próprio banner
diz `Z80 TURBO Pascal cross-compiler, Version 3.3f` (seu binário até
contém a string `Copyright (C) MSX computer club Enschede, '93-'99`).
Em contraste, `turbo.com` / `runtime.com` e tudo o que `tp3.exe` produz
(`*.CHN`, `*.COM` vinculados) são código de máquina Z80 — esses só rodam em
hardware MSX ou em um emulador MSX como o openMSX, nunca no DOSBox.

Este diretório inclui configurações locais do DOSBox, de modo que nenhuma
configuração global do DOSBox é necessária:

- `dosbox-tp3.conf` — monta este diretório como `C:` (caminho relativo,
  funciona porque o launcher define o diretório de trabalho aqui).
- `run-tp3.sh` — launcher:
  `./run-tp3.sh` mostra o banner do compilador;
  `./run-tp3.sh hello` compila `HELLO.PAS` e vincula `HELLO.COM` exatamente
  como `turbopc.bat` faz (`tp3` → `.CHN`, depois `runtime.com` + `.CHN`);
  `./run-tp3.sh --shell` abre um prompt DOS interativo.
  As saídas aparecem em nomes 8.3 em MAIÚSCULAS (`HELLO.CHN`, `HELLO.COM`).
  Verificado com DOSBox Staging 0.82.2: banner, compilação bem-sucedida
  (`Code: 56 bytes`, `Data: 263 bytes` para o teste hello-world) e
  tamanhos de link corretos (`HELLO.COM` = runtime de 11675 bytes + `.CHN`).

### Programas de exemplo (`*.pas`, um por rotina GIOS, traduzidos para pt-BR)

Gráficos:

- `attr.pas` — `SpriteAttributeAddress`
- `c_color.pas` — `ChangeColor`
- `circle.pas` — `Circle`
- `displayp.pas` — `DisplayPage`
- `expand.pas` — `Expand`
- `fastbox.pas` — `FastBox`
- `fastcopy.pas` — `FastCopy`
- `fillbox.pas` — `FillBox`
- `fillsha.pas` — `FillShape`
- `fillspri.pas` — `FillSprite`
- `fwrite.pas` — `FWrite` (demonstração de saída rápida de texto)
- `gcopy.pas` — `GCopy`
- `line.pas` — `Line`
- `loadpic.pas` — `LoadPicture`
- `paint.pas` — `Paint`
- `point.pas` — `Point`
- `pset.pas` — `PSet`
- `savepict.pas` — `SavePicture`
- `screen.pas` — `Screen`
- `scronoff.pas` — `ScreenOn`/`ScreenOff`
- `search.pas` — `Search`

Sprites:

- `sprcolor.pas` — `SpriteColor`
- `sproff.pas` — `SpritesOff`/`SpritesOn`
- `sprsize.pas` — `SpriteSize`

Som e entrada:

- `sound.pas` — `Sound` (PSG)
- `stick.pas` — `Stick` (joystick/teclas de cursor)
- `strig.pas` — `Strig` (botões de gatilho)
- `getfkey.pas` — `GetFKey` (teclas de função)
- `getpad.pas` — `GetPad` (mouse/tablet)
- `getpdl.pas` — `GetPdl` (paddles)

Memory mapper:

- `clearmem.pas` — `ClearMem`
- `readmem.pas` — `ReadMem`
- `writemem.pas` — `WriteMem`
- `setchan.pas` — `SetChannel`
- `setmem.pas` — `SetMem`

Relógio do sistema, disco e VDP:

- `date.pas` / `setdate.pas` — `Date` / `SetDate`
- `time.pas` / `settime.pas` — `Time` / `SetTime`
- `readsect.pas` / `writesec.pas` — `ReadSector` / `WriteSector`
- `readvdp.pas` / `writevdp.pas` — `ReadVDP` / `WriteVDP`
- `readpsg.pas` — `ReadPSG` (dump dos registradores PSG)
- `vpeek.pas` / `vpoke.pas` — `VPeek` / `VPoke` (acesso à VRAM)
- `waitvdp.pas` — `WaitVDP` (conclusão de comando VDP)

Programas de demonstração:

- `gios.asc` — demonstração de curva de Bezier para o GIOS (©1991 MSX Computer Magazine),
  fonte Turbo Pascal usando `{$IGIOS.INC}` (traduzido para pt-BR).

## Fontes e leitura adicional

- Hans Otten, "Turbo Pascal on CP/M, MSX-DOS and MS-DOS" —
  <http://pascal.hansotten.com/delphi/turbo-pascal-on-cpm-msx-dos-and-ms-dos> —
  hospeda a distribuição oficial 3.3f *com permissão de Frits Hilderink*
  (`turbo33f.zip`), a versão instalada para MSX-2 (`tpmsx2.zip`), o manual
  do Turbo Pascal 3.0 e o artigo MCM 51 sobre o GIOS.
- MSX Resource Center — <https://www.msx.org> (arquivo de software, fóruns).
- Fundamentos do MSX-DOS — <https://en.wikipedia.org/wiki/MSX-DOS>;
  Fundamentos do Turbo Pascal — <https://en.wikipedia.org/wiki/Turbo_Pascal>.

## Notas legais

- O Turbo Pascal é um produto da Borland (agora legado Embarcadero/Micro Focus);
  versões antigas (1.0, 3.02, 5.5) foram lançadas pela Borland como freeware
  por interesse histórico. A portagem para MSX-2 e o GIOS são trabalho de
  Frits Hilderink / MSX Computer Club Enschede, (C) 1993–1996, distribuídos
  com a permissão do autor via site acima.
- MSX é uma marca registrada da MSX Licensing Corporation.
- Esta tradução em português brasileiro é fornecida para fins de
  preservação/estudo; os textos originais em holandês permanecem como
  referência autoritativa para a intenção do autor.
