**README.md**

# Project Title

## Description

This project focuses on enhancing the security and performance of web servers on a Unix machine. The tasks involve running scripts on Ubuntu 20.04 LTS, ensuring script execution, passing Shellcheck, and adhering to specific security measures.

## Requirements

### General

- All files interpreted on Ubuntu 20.04 LTS.
- Files end with a new line.
- Mandatory README.md file at the project's root.
- Bash script files are executable.
- Bash scripts pass Shellcheck without errors.
- Bash scripts run without errors.
- First line in Bash scripts: `#!/usr/bin/env bash`
- Second line in Bash scripts: Comment explaining the script's purpose.

### Task 0: Run software as another user

- Write a Bash script accepting one argument.
- Script runs `whoami` under the user passed as an argument.

Example:
```bash
root@ubuntu:~# whoami
root
root@ubuntu:~# ./0-iamsomeoneelse www-data
www-data
root@ubuntu:~# whoami
root
root@ubuntu:~#
```

**Repo Information:**
- GitHub repository: [alx-system_engineering-devops](repository_link)
- Directory: 0x12-web_stack_debugging_2
- File: 0-iamsomeoneelse

### Task 1: Run Nginx as Nginx

- Ensure Nginx runs as the `nginx` user.
- Nginx must listen on all active IPs on port 8080.
- No usage of `apt-get remove`.
- Write a Bash script to configure the container as per requirements.

After debugging:
```bash
root@ab6f4542747e:~# ps auxff | grep ngin[x]
# Output confirming nginx processes running under nginx user

root@ab6f4542747e:~# nc -z 0 8080 ; echo $?
# Output confirming Nginx is listening on port 8080
```

**Repo Information:**
- GitHub repository: [alx-system_engineering-devops](repository_link)
- Directory: 0x12-web_stack_debugging_2
- File: 1-run_nginx_as_nginx

## Notes

Ensure all scripts are thoroughly tested, and the README is updated as needed. Follow best practices for security and script documentation.
