# ─────────────────────────────────────────────
# Challenge: who-goes-there
# Category:  Linux: Users
# Author:    AJ Arguello - GitHub: SeveralBandicoot
# ─────────────────────────────────────────────

# Always extend from the LUG base image
FROM lug-ctf-base

# -- Switch to root for puzzle setup ----------
USER root

# ── Puzzle Setup ──────────────────────────────
# Embed the flag as a fake user entry in /etc/passwd
# Members have to read and parse the file to find it
RUN echo 'lugctf:x:1337:1337:flame{test}:/home/lugctf:bin/bash' >> /etc/passwd

# Give a hint in their home directory
RUN echo "The flag is hidden in plain sight. Every user on this system is listed somewhere." > /home/hacker/README.txt

# -- Submission Script -------------------------
COPY submit.sh /challenge/submit
RUN chmod +x /challenge/submit

# ── Entry Point ───────────────────────────────
USER hacker
WORKDIR /home/hacker
CMD ["/bin/bash"]
