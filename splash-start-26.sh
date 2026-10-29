#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <max-context>" >&2
    exit 1
fi
MAX_CONTEXT="$1"

brew install Splash
brew upgrade Splash
splash serve --allowed-host ai.exocomet-boga.ts.net \
    --model mlx-community/Qwen3.8-27B-4bit \
    --language-only \
    --default-reasoning-effort medium \
    --max-context "$MAX_CONTEXT" \
    --port 10000 --host 127.0.0.1 \
    --max-memory 26G \
    --kv-format int8 \
    --served-model "Qwen3.8-27B-4bit" \
    --no-webui \
    --announce-served-name
