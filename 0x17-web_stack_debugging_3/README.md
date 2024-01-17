# Project: Web Stack Debugging 3

## Overview

In this project, we aim to troubleshoot and resolve a 500 Internal Server Error in Apache using strace to trace system calls. Once the issue is identified, we will automate the fix using Puppet, enhancing the system's maintainability.

## Tasks

### Task 0: Strace is Your Friend

Using strace, investigate the root cause of Apache returning a 500 error. This involves analyzing the system calls and identifying the issue. You can use tmux to run strace in one window and curl in another.

```bash
root@e514b399d69d:~# curl -sI 127.0.0.1
HTTP/1.0 500 Internal Server Error
Date: Fri, 24 Mar 2017 07:32:16 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Connection: close
Content-Type: text/html
```

### Task 1: Fix and Automate with Puppet

After identifying the issue, create a Puppet manifest file (0-strace_is_your_friend.pp) containing Puppet code to fix the problem. You are free to choose any Puppet resource type for the fix.

```bash
root@e514b399d69d:~# puppet apply 0-strace_is_your_friend.pp
Notice: Compiled catalog for e514b399d69d.ec2.internal in environment production in 0.02 seconds
Notice: /Stage[main]/Main/Exec[fix-wordpress]/returns: executed successfully
Notice: Finished catalog run in 0.08 seconds
```

### Task 2: Verify Fix

Confirm the fix by checking that Apache no longer returns a 500 error.

```bash
root@e514b399d69d:~# curl -sI 127.0.0.1:80
HTTP/1.1 200 OK
Date: Fri, 24 Mar 2017 07:11:52 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Link: <http://127.0.0.1/?rest_route=/>; rel="https://api.w.org/"
Content-Type: text/html; charset=UTF-8
```

### Task 3: Additional Verification

Perform additional verification by checking specific content on the web page.

```bash
root@e514b399d69d:~# curl -s 127.0.0.1:80 | grep Holberton
<!-- Output indicating successful fix -->
```

## Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- **Directory:** 0x17-web_stack_debugging_3
- **File:** 0-strace_is_your_friend.pp

Feel free to reach out for any questions or assistance.

Happy debugging! 🚀
