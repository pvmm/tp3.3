# Turbo Pascal 3.3f for MSX-DOS (Brazilian Portuguese translation)

> **Archived.** This Brazilian Portuguese translation is now archived and no
> longer updated. The original Dutch version is preserved in the `original`
> branch.

Z80 TURBO Pascal compiler, Version 3.3.

## Author and copyright

- Author of the MSX-DOS/MSX-2 version (3.3x/3.3f), including the GIOS
  (graphics I/O system) and the PC cross-development version:
  **Frits Hilderink**, also known as **MCE**.
- Released through the **MSX Computer Club Enschede** (Netherlands).
- Original copyright banner of the compiler:

  ```text
  Z80 TURBO Pascal compiler,             Version 3.3

  Copyright (C) MSX computer club Enschede, '93-'96
  ```

  (see `document.txt`, section 17.1; years **1993–1996**)
- The author's name also appears in this archive itself:
  `overlay.pas` prints `Frits Hilderink` in its overlay demo.

## What is this?

Borland's Turbo Pascal 3 (1983) was the last version targeting CP/M.
Because MSX-DOS is CP/M-compatible, Turbo Pascal 3 runs on MSX, and it
became the best-supported Pascal compiler on the platform. Frits Hilderink
patched and installed it for the MSX-2: full MSX-DOS/MSX-DOS 2 file support,
an MSX-aware runtime, and the GIOS library giving Pascal programs access to
MSX graphics, sprites, sound (PSG), memory mapper, clock, joystick/mouse
(`GetPad`/`GetPdl`), RS-232-independent DOS functions, and more, plus a PC
version for cross-compilation.

This directory (`turbo33f`) is **not** the official 3.3f distribution —
it is only a **Brazilian Portuguese translation** of it (see [About this copy](#about-this-copy)
and [Repository contents](#repository-contents) below). The official
distribution (`turbo33f.zip`, hosted with the author's permission) is linked
under [Sources and further reading](#sources-and-further-reading).

## About this copy

The manual and the example programs were originally written in **Dutch**.
In this copy they have been translated into **Brazilian Portuguese**
(program identifiers converted to valid Portuguese Pascal names; GIOS/Turbo
Pascal API names such as `Actpage`, `Atrbyt`, `Logopr`, `FillBox`,
`SpriteColor` kept unchanged; filenames inside programs kept unchanged). The
file `document.txt` was also converted from its original ISO-8859-1
(Latin-1) encoding to UTF-8. The `.com`/`.sys`/`.tsr` binaries are
untouched.

`contents.txt` was formerly `inhoud.txt` (`inhoud` = "contents" in Dutch).

## Repository contents

### Manual and documentation

- `document.txt` — the full Turbo Pascal + GIOS manual, ~13,800 lines,
  UTF-8 (translated from Dutch; originally ISO-8859-1). Chapters 1–17 cover
  the Turbo Pascal 3 language; chapter 18 and appendices H–L cover the GIOS
  additions, DOS 1/2 extensions and error codes.
- `contents.txt` — table of contents of `document.txt` (translated).
- `README.md` — this file.

### Compiler and toolchain

- `turbo.com` — the Z80 Turbo Pascal 3.3 compiler itself.
- `tp3.exe` — PC (MS-DOS) cross-compiler executable.
- `turbopc.bat` — PC build script: runs `tp3` on the given sources and joins
  `runtime.com` with the resulting `.chn` file into a `.com`.
- `runtime.com` — runtime joined to compiled programs on PC builds.
- `overlay.pas` — overlay demo program (prints `Frits Hilderink`).
- `command.com`, `command2.com` — command shells bundled with the pack.
- `msxdos.sys`, `msxdos2.sys` — MSX-DOS 1 / DOS 2 system files.
- `compress.com`, `crunch.com`, `dos2cash.com` —
  small bundled utilities (exact purpose undocumented in this archive).
- `tr.com` — TsrLoad: loads a TSR (terminate-and-stay-resident) program.
- `tk.com` — TsrKill: unloads a previously loaded TSR program.
- `memman.com` — memory-manager helper.
- `msxdebug.com` — debugger helper.
- `getrom.bas` — MSX-BASIC program dumping the machine ROMs
  (BIOS, BASIC, Disk-ROM, MSX-2 sub-ROM) for emulator use.

### GIOS library

- `gios.com` — GIOS library, disk version.
- `gios.tsr` — GIOS library, memory-resident (TSR) version.

### Running the PC cross-compiler (`tp3.exe`) in DOSBox

`tp3.exe` is the PC-hosted cross-compiler: an MS-DOS program that runs on a
PC (including under DOSBox) and generates Z80 code for MSX. Its own banner
says `Z80 TURBO Pascal cross-compiler, Version 3.3f` (its binary even
carries a `Copyright (C) MSX computer club Enschede, '93-'99` string).
By contrast, `turbo.com` / `runtime.com` and everything `tp3.exe` produces
(`*.CHN`, linked `*.COM`) are Z80 machine code — those only run on MSX
hardware or an MSX emulator such as openMSX, never in DOSBox.

This directory ships repo-local DOSBox settings, so no global DOSBox
configuration is needed:

- `dosbox-tp3.conf` — mounts this directory as `C:` (relative path, works
  because the launcher sets the working directory here).
- `run-tp3.sh` — launcher:
  `./run-tp3.sh` shows the compiler banner;
  `./run-tp3.sh hello` compiles `HELLO.PAS` and links `HELLO.COM` exactly
  like `turbopc.bat` does (`tp3` → `.CHN`, then `runtime.com` + `.CHN`);
  `./run-tp3.sh --shell` opens an interactive DOS prompt.
  Outputs land in UPPERCASE 8.3 names (`HELLO.CHN`, `HELLO.COM`).
  Verified with DOSBox Staging 0.82.2: banner, successful compilation
  (`Code: 56 bytes`, `Data: 263 bytes` for the hello-world test) and
  correct link sizes (`HELLO.COM` = 11675-byte runtime + `.CHN`).

### Example programs (`*.pas`, one per GIOS routine, translated to pt-BR)

Graphics:

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
- `fwrite.pas` — `FWrite` (fast text output demo)
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

Sound and input:

- `sound.pas` — `Sound` (PSG)
- `stick.pas` — `Stick` (joystick/cursor keys)
- `strig.pas` — `Strig` (trigger buttons)
- `getfkey.pas` — `GetFKey` (function keys)
- `getpad.pas` — `GetPad` (mouse/tablet)
- `getpdl.pas` — `GetPdl` (paddles)

Memory mapper:

- `clearmem.pas` — `ClearMem`
- `readmem.pas` — `ReadMem`
- `writemem.pas` — `WriteMem`
- `setchan.pas` — `SetChannel`
- `setmem.pas` — `SetMem`

System clock, disk and VDP:

- `date.pas` / `setdate.pas` — `Date` / `SetDate`
- `time.pas` / `settime.pas` — `Time` / `SetTime`
- `readsect.pas` / `writesec.pas` — `ReadSector` / `WriteSector`
- `readvdp.pas` / `writevdp.pas` — `ReadVDP` / `WriteVDP`
- `readpsg.pas` — `ReadPSG` (PSG registers dump)
- `vpeek.pas` / `vpoke.pas` — `VPeek` / `VPoke` (VRAM access)
- `waitvdp.pas` — `WaitVDP` (VDP command completion)

Demo programs:

- `gios.asc` — Bezier-curve demo for GIOS (©1991 MSX Computer Magazine),
  Turbo Pascal source using `{$IGIOS.INC}` (translated to pt-BR).

## Sources and further reading

- Hans Otten, "Turbo Pascal on CP/M, MSX-DOS and MS-DOS" —
  <http://pascal.hansotten.com/delphi/turbo-pascal-on-cpm-msx-dos-and-ms-dos> —
  hosts the official 3.3f distribution *with permission of Frits Hilderink*
  (`turbo33f.zip`), the MSX-2 installed version (`tpmsx2.zip`), the Turbo
  Pascal 3.0 manual, and the MCM 51 article on GIOS.
- MSX Resource Center — <https://www.msx.org> (software archive, forums).
- MSX-DOS background — <https://en.wikipedia.org/wiki/MSX-DOS>;
  Turbo Pascal background — <https://en.wikipedia.org/wiki/Turbo_Pascal>.

## Legal notes

- Turbo Pascal is a Borland (now Embarcadero/Micro Focus heritage) product;
  old versions (1.0, 3.02, 5.5) were released by Borland as freeware for
  historical interest. The MSX-2 port and GIOS are the work of Frits
  Hilderink / MSX Computer Club Enschede, (C) 1993–1996, distributed with
  the author's permission via the site above.
- MSX is a trademark of MSX Licensing Corporation.
- This Brazilian Portuguese translation is provided for preservation/study
  purposes; the original Dutch texts remain the authoritative reference for
  the author's intent.
