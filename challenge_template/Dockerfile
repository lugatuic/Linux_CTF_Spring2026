# ─────────────────────────────────────────────
# Challenge: YOUR_CHALLENGE_NAME
# Category:  beginner / intermediate / hard
# Author:    @your-github-handle
# ─────────────────────────────────────────────

# Always extend from the LUG base image
FROM lug-ctf-base

# ── Puzzle Setup ──────────────────────────────
# Create the files, users, and permissions
# that define the challenge state here.
# Example:
# RUN echo "LUG{your_flag_here}" > /secret/flag
# RUN chown root:root /secret/flag && chmod 700 /secret/flag

# ── Challenge Binary ──────────────────────────
COPY challenge.sh /challenge/run
RUN chmod +x /challenge/run

# ── Entry Point ───────────────────────────────
USER hacker
WORKDIR /home/hacker
CMD ["/bin/bash"]
