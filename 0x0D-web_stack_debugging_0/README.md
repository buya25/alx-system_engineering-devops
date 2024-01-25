# Project: 0x0D-web_stack_debugging_0

## Description
In this debugging project, the goal is to get Apache to run on the Docker container and return a page containing "Hello Holberton" when querying the root.

## Tasks

### 0. Give me a page!
* Fix the Docker container to run Apache and return a page with "Hello Holberton" when querying the root.

### Usage
```bash
docker run -p 8080:80 -d -it holbertonschool/265-0
```

After starting the Docker container, use the following command to verify the fix:

```bash
curl 0:8080
```

Expected Output:

```bash
Hello Holberton
```

### Notes
If you encounter an error or empty reply from the server, connect to the container, identify the issue, and apply the necessary fixes. Once the issue is resolved, the curl command should return the correct page.

### Example
```bash
# Start the Docker container
docker run -p 8080:80 -d -it holbertonschool/265-0

# Verify the issue
curl 0:8080
# Output: curl: (52) Empty reply from server

# Connect to the container and fix the issue

# After fixing, re-run the curl command
curl 0:8080
# Output: Hello Holberton
```

**Note:** Paste the command(s) used to fix the issue in your answer file.

## Environment
All scripts are interpreted on Ubuntu 14.04 LTS.

## Author
Yabs Mullo <yabsmullo0@gmail.com>
