#!/bin/bash
# ─────────────────────────────────────────────
# LUG CTF — Build Script
# Usage:
#   ./build.sh base              builds just the base image
#   ./build.sh all               builds base + all challenges
#   ./build.sh who-goes-there    builds one specific challenge
# ─────────────────────────────────────────────

set -e

build_base() {
    echo "Building base image..."
    docker build -t lug-ctf-base ./base
    echo "Base image ready."
}

build_challenge() {
    CHALLENGE=$1
    PATH_TO=$(find ./challenges -type d -name "$CHALLENGE")

    if [ -z "$PATH_TO" ]; then
        echo "Challenge '$CHALLENGE' not found."
        exit 1
    fi

    echo "Building $CHALLENGE..."
    docker build -t "lug-ctf-$CHALLENGE" "$PATH_TO"
    echo "$CHALLENGE ready."
}

case "$1" in
    base)
        build_base
        ;;
    all)
        build_base
        for dir in ./challenges/*/*; do
            challenge=$(basename "$dir")
            build_challenge "$challenge"
        done
        ;;
    *)
        build_challenge "$1"
        ;;
esac
