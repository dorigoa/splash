#!/usr/bin/env bash
set -euo pipefail
MAX_CONTEXT="262144"
if [[ $# -ne 1 ]]; then
    MAX_CONTEXT="262144"
    #echo "Usage: $0 <max-context>" >&2
    #exit 1
else
    MAX_CONTEXT="$1"
fi


brew install Splash
brew upgrade Splash
splash serve --allowed-host ai.exocomet-boga.ts.net \
    --model mlx-community/Qwen3.8-27B-4bit \
    --language-only \
    --default-reasoning-effort medium \
    --max-context "$MAX_CONTEXT" \
    --port 10000 --host 0.0.0.0 \
    --max-memory 30G \
    --kv-format int8 \
    --served-model "Qwen3.8-27B-4bit" \
    --no-webui \
    --announce-served-name
