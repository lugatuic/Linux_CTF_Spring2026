#!/bin/bash
# ─────────────────────────────────────────────
# Challenge binary for YOUR_CHALLENGE_NAME
# Members run this at /challenge/run
# ─────────────────────────────────────────────

FLAG="flame{your_flag_here}"

# Check whether the member solved the puzzle
if [ YOUR_CONDITION_HERE ]; then
    echo "Well done. Here is your flag:"
    echo $FLAG
else
    echo "Not quite. Keep going."
fi
