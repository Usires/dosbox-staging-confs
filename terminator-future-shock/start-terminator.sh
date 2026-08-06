#!/usr/bin/env bash
# Wrapper für Faugus → Terminator: Future Shock via DosBox Staging.
# MIDI: Roland SC-55 (Nuked-SC55). Auswahl-Menü liegt in der DosBox-Conf.

set -uo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

DOSBOX_BIN="/home/dirk/Apps/dosbox-staging/dosbox"
export SOUNDCANVAS_ROM_PATH="/home/dirk/Games/SHOCK/sc55-rom"

if [[ ! -x "$DOSBOX_BIN" ]]; then
    echo "FEHLER: DosBox-Staging Binary nicht gefunden: $DOSBOX_BIN" >&2
    exit 1
fi

exec "$DOSBOX_BIN" -conf "$SCRIPT_DIR/terminator-future-shock.conf"
