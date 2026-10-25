brew install Splash
brew upgrade Splash
splash serve --allowed-host ai.exocomet-boga.ts.net --model mlx-community/Qwen3.8-27B-4bit --language-only --default-reasoning-effort medium --max-context 204800 --port 10000 --host 0.0.0.0 --max-memory 26G --kv-format int8 --no-webui --announce-served-name Qwen3.8-27B-4bit
=======
splash serve --allowed-host ai.exocomet-boga.ts.net \
    --model mlx-community/Qwen3.8-27B-4bit \
    --language-only \
    --default-reasoning-effort medium \
    --max-context 204800 \
    --port 10000 --host 127.0.0.1 \
    --max-memory 26G \
    --kv-format int8 \
    --served-model "qwen3.8-27b-4bit" \
    --no-webui \
    --announce-served-name "Qwen3.8-27B-4bit"
