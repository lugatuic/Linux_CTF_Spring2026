#!/bin/bash
# ─────────────────────────────────────────────
# Submission script for YOUR_CHALLENGE_NAME
# Usage: /challenge/submit <flag>
# ─────────────────────────────────────────────

CORRECT_FLAG="flame{your_flag_here}"

if [ -z "$1" ]; then
    echo "Usage: /challenge/submit <flag>"
    exit 1
fi

if [ "$1" = "$CORRECT_FLAG" ]; then
    echo "Correct! Well done."
else
    echo "Wrong flag. Keep looking."
fi
