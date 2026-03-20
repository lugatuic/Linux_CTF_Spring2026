# LUG CTF - Linux Challenge Repository

CTF Challenfes for the Linux User Group covering: 
- Untangling Users
- Percieving Permissions 
- Processes and Jobs 

## For Members
Each challenge folder has a README with setup instructions. 
Run any challenge with: 
\'\'\'bash
docker build -t <challenge-name>
docker run -it <challenge-name>
\'\'\'

## For CTF Leads
See [CONTRIBUTING.md] for the full guide on building challenges.

Quick start: 
\'\'\'bash
# 1. Install Docker Destkop
# 2. Clone this repo
git clone <repo-url
cd Linux_CTF_Spring2026

# 3. Build the base image
./build.sh base

# 4. Copy the template and start building
cp -r challenge_template challenges/<topic>/<challenge-name>
\'\'\'

## Challenge Structure
\`\`\`
challenges/
    ├── users/
    │   └── who-goes-there/
    ├── permissions/
    └── processes/
\`\`\`

## Flag Format
'flame{...}'
