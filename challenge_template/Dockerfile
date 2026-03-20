# ─────────────────────────────────────────────
# Challenge: YOUR_CHALLENGE_NAME
# Category:  Users / Permissions / Processes / etc
# Author:    @your-github-handle
# ─────────────────────────────────────────────

# Always extend from the LUG base image
FROM lug-ctf-base

# -- Switch to root for puzzle setup -----------
USER root

# ── Puzzle Setup ──────────────────────────────
# Create the files, users, and permissions
# that define the challenge state here.
# Example:
# RUN echo "flame{your_flag_here}" > /secret/flag
# RUN chown root:root /secret/flag && chmod 700 /secret/flag

# -- Hint File ---------------------------------
# Give members a little nudge in their home directory 
# RUN echo "Your hint here." > /home/hacker/README.txt

# ── Challenge Binary ──────────────────────────
#Only needed if the flag requires running /challenge/run
#COPY challenge.sh /challenge/run
#RUN chmod +x /challenge/run

# ── Entry Point ───────────────────────────────
USER hacker
WORKDIR /home/hacker
CMD ["/bin/bash"]
