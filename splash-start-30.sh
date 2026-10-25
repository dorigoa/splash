brew install Splash
brew upgrade Splash
splash serve --allowed-host ai.exocomet-boga.ts.net \
    --model mlx-community/Qwen3.8-27B-4bit \
    --language-only \
    --default-reasoning-effort medium \
    --max-context 262144 \
    --port 10000 --host 0.0.0.0 \
    --max-memory 30G \
    --kv-format int8 \
    --served-model "Qwen3.8-27B-4bit" \
    --no-webui \
    --announce-served-name
