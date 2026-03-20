#!/bin/bash
# ─────────────────────────────────────────────
# Submission script for who-goes-there
# Usage: /challenge/submit <flag>
# ─────────────────────────────────────────────

CORRECT_FLAG="flame{test}"

if [ -z "$1" ]; then
    echo "Usage: /challenge/submit <flag>"
    exit 1
fi

if [ "$1" = "$CORRECT_FLAG" ]; then
    echo "Correct!"
else
    echo "Wrong flag. Keep looking!"
fi
