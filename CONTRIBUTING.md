# Contributing to a Challenge


## Before contributing! Make sure: 
- Docker Destkop is installed and running
- Repository is cloned locally 
- Base image is build: './build.sh base'

## Step 1 - Clone and Build the Base
\'\'\'bash
git clone <repo-url>
cd Linux_CTF_Spring2026
./build.sh base
\'\'\'

## Step 2 - Copy the Template
\'\'\'bash
cp -r challenge_template challenges/<topic>/<challenge-name>
\'\'\'
Topic folders: 'users', 'permissions', 'processes'

## Step 3 - Edit the Dockerfile
- Fill in challenge name, category, and your GitHub handle
- Add puzzle setup under USER root
- Add a hint file for members
- Challenge binary lines are optional if challenge calls for it
- Reference 'challenges/users/who-goes-there/Dockerfile' as a working example

## Step 4 - Edit submit.sh
- Set the CORRECT_FLAG variable to yourflag
- Flag format is always: 'flame{...}'

## Step 5 - Edit the README
- Fill in name, category, points, author, pwn.college-module
- Write a description that sets up the scenario without giving away the solution- Write two hints that nudge without spoiling

## Step 6 - Build and Test
\'\'\'bash
./build.sh <challenge-name>
docker run -it lug-ctf-<challenge-name>
\'\'\'

Inside the container, verify:
1. You cannot get the flag without solving the puzzle
2. The intended solution works
3. /challege/submit flame{wrong} prints wrong message
4. /challenge/submit flame{correct} prints correct message
5. No unintended shortcuts exist

## Step 7 - Submit a PR
\'\'\'bash
git checkout -b challenge/<challenge-name>
git add challenges/<topic>/<challenge-name>
git commit -m "Add <challenge-name> challenge"
git push origin challenge/<challenge-name>
\'\'\'
Then open a pull request and tag another lead for a cold solve before merging.

## Flag Format
'flame{...}'

## Reference Challenge
See 'challenges/users/who-goes-there/' for a complete working example. 
