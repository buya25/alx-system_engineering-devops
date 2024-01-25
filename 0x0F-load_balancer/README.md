# Project README

This repository is part of the ALX System Engineering & DevOps curriculum and focuses on load balancing configurations using HAproxy. Below are the details and tasks associated with this project.

## Project Overview

### Servers Information

| Name            | Username | IP             | State   |
| --------------- | -------- | -------------- | ------- |
| 311679-web-01   | ubuntu   | 18.207.207.57  | running |
| 311679-web-02   | ubuntu   | 100.25.221.34  | running |
| 311679-lb-01    | ubuntu   | 54.146.59.177 | running |

## Tasks

### Task 0: Double the number of webservers

**Objective:** Configure web-02 to be identical to web-01 and add a custom Nginx response header.

**Requirements:**
- Configure Nginx on web-01 and web-02 to include a custom HTTP header (`X-Served-By`).
- The value of the custom HTTP header must be the hostname of the server Nginx is running on.
- Write a Bash script (`0-custom_http_response_header`) that configures a new Ubuntu machine to meet the specified requirements.
- Ignore SC2154 for shellcheck.

**Example:**
```bash
$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
```

### Task 1: Install your load balancer

**Objective:** Install and configure HAproxy on lb-01 to distribute traffic to web-01 and web-02.

**Requirements:**
- Configure HAproxy to send traffic to web-01 and web-02 using a round-robin algorithm.
- Ensure HAproxy can be managed via an init script.
- Make sure that the servers are configured with the right hostnames ([STUDENT_ID]-web-01 and [STUDENT_ID]-web-02).

**Example:**
```bash
$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes
```
```bash
$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:19 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
X-Served-By: 03-web-02
Accept-Ranges: bytes
```

## Instructions for Running the Scripts

1. Clone the repository: `git clone https://github.com/your-username/alx-system_engineering-devops.git`
2. Navigate to the appropriate directory: `cd alx-system_engineering-devops/0x0F-load_balancer`
3. Execute the Bash scripts with proper permissions: `chmod +x script_name.sh && ./script_name.sh`

**Note:** Make sure to replace `your-username` with your actual GitHub username.
