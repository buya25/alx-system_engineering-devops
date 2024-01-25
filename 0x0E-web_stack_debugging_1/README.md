# Web Stack Debugging 1

This project focuses on debugging issues related to Nginx on an Ubuntu 20.04 LTS system. Below are the tasks and corresponding instructions:

## Task 0: Nginx likes port 80

### Requirements:

- Nginx must be running and listening on port 80 of all the server’s active IPv4 IPs.
- Write a Bash script that configures a server to meet the above requirements.

### Instructions:

1. Using your debugging skills, find out what’s preventing the Ubuntu container's Nginx installation from listening on port 80.
2. Feel free to install whatever tool you need, start and destroy as many containers as you need to debug the issue.
3. Write a Bash script with the minimum number of commands to automate your fix.

Example usage:

```bash
$ curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
$ ./0-nginx_likes_port_80 > /dev/null 2&>1
$ curl 0:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```

## Task 1: Make it sweet and short

### Requirements:

- Your Bash script must be 5 lines long or less.
- There must be a new line at the end of the file.
- You must respect usual Bash script requirements.
- You cannot use `;`.
- You cannot use `&&`.
- You cannot use `wget`.
- You cannot execute your previous answer file (Do not include the name of the previous script in this one).
- `service` (init) must say that nginx is not running.

Example usage:

```bash
$ ./1-debugging_made_short
$ curl 0:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
$ service nginx status
 * nginx is not running
```

Please refer to the respective script files in the [GitHub repository](https://github.com/buya25/alx-system_engineering-devops/tree/main/0x0E-web_stack_debugging_1) for the complete implementation of each task.
