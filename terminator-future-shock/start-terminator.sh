#!/usr/bin/env bash
# Use this to create a app menu entry with your favorite desktop environment.

set -uo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

DOSBOX_BIN="/home/dirk/Apps/dosbox-staging/dosbox"

if [[ ! -x "$DOSBOX_BIN" ]]; then
    echo "ERROR: DosBox Staging Binary not found in: $DOSBOX_BIN" >&2
    exit 1
fi

exec "$DOSBOX_BIN" -conf "$SCRIPT_DIR/terminator-future-shock.conf"
