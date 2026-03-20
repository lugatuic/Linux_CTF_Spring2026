# who-goes-there

**Category:** Users
**Module:** Untangling Users

## Description
Every user on a Linux system is listed somewhere. A suspicious account has been added to this system, find it and you will find your flag. 

## How to Run
\`\`\`bash
docker build -t who-goes-there .
docker run -it who-goes-there
\`\`\`

## Hints
<details><summary>Hint 1</summary>
What file does Linux store its list of users?
</details>

<details><summary>Hint 2</summary>
Try cat /etc/passwd and read through each line.
</details>

## Flag Format
`flame{...}`
