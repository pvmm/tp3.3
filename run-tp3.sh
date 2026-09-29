#!/usr/bin/env bash
# Run tp3.exe (Turbo Pascal 3.3f PC cross-compiler) in DOSBox.
#
#   ./run-tp3.sh           show the compiler banner/options, then quit
#   ./run-tp3.sh hello[.pas] compile HELLO.PAS to HELLO.COM using the /C
#                          flag (compiles directly to COM, no copy step).
#                          An optional .pas extension (any case) is accepted
#                          and stripped: 'hello.pas' works like 'hello'.
#                          NOTE: the .COM contains Z80 code for MSX --
#                          run it on an MSX emulator (e.g. openMSX),
#                          not in DOSBox.
#   ./run-tp3.sh --shell   open an interactive DOS prompt at C:\
#
# Notes:
# - All settings are local (dosbox-tp3.conf in this directory); your global
#   DOSBox configuration is left untouched.
# - DOSBox writes 8.3 names in UPPERCASE on the host, so outputs appear as
#   HELLO.CHN / HELLO.COM even if your source is hello.pas.
# - Non-interactive runs are driven through a throwaway batch file (this
#   DOSBox build does not honour -c commands), which is deleted afterwards.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

BASE=(dosbox --noprimaryconf --nolocalconf --noconsole --conf "$DIR/dosbox-tp3.conf"
  --working-dir "$DIR")

if [[ "${1:-}" == "--shell" ]]; then
  exec "${BASE[@]}"
fi

name="${1:-}"
# Accept an optional .pas extension in any case: hello.pas -> hello.
base="${name%.[Pp][Aa][Ss]}"
[[ -n "$base" ]] || base="$name"
bat="$DIR/__tp3run.bat"
if [[ -z "$base" ]]; then
  printf '@echo off\r\ntp3\r\n' > "$bat"
else
  printf '@echo off\r\ntp3 %s /C\r\n' "$base" > "$bat"
fi

"${BASE[@]}" __tp3run.bat
rm -f "$bat"

if [[ -n "$base" ]]; then
  upper="$(echo "$base" | tr '[:lower:]' '[:upper:]')"
  echo "--- produced files ---"
  ls -la "$DIR/$upper.COM" 2>/dev/null || true
fi
