#!/usr/bin/env bash
# Open tp3 directory (Turbo Pascal 3.3f PC cross-compiler) in DOSBox.
#
#   ./run-msdos.sh         open an interactive DOS prompt at C:\
#
# Notes:
# - All settings are local (dosbox-tp3.conf in this directory); your global
#   DOSBox configuration is left untouched.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

BASE=(dosbox --noprimaryconf --nolocalconf --noconsole --conf "$DIR/dosbox-tp3.conf"
  --working-dir "$DIR")
exec "${BASE[@]}"
