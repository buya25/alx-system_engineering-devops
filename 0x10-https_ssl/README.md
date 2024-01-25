# 0. World Wide Web

## Task Description
Configure your domain zone to point subdomains to specific IP addresses. Additionally, create a Bash script that provides information about subdomains, accepting domain and subdomain parameters.

### Requirements
- Add the following subdomains to your domain and point them to the specified IP addresses:
  - www: Points to lb-01 IP
  - lb-01: Points to lb-01 IP
  - web-01: Points to web-01 IP
  - web-02: Points to web-02 IP
- Create a Bash script that accepts two arguments:
  - domain (mandatory): The domain name to audit.
  - subdomain (optional): Specific subdomain to audit.
- Output format: "The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]."
- When only the domain parameter is provided, display information for its subdomains www, lb-01, web-01, and web-02 in that order.
- When both domain and subdomain parameters are provided, display information for the specified subdomain.
- Ignore shellcheck case SC2086.
- Use `awk` and include at least one Bash function.

### Example
```bash
./0-world_wide_web holberton.online
```
Output:
```
The subdomain www is an A record and points to 54.210.47.110
The subdomain lb-01 is an A record and points to 54.210.47.110
The subdomain web-01 is an A record and points to 34.198.248.145
The subdomain web-02 is an A record and points to 54.89.38.100
```

```bash
./0-world_wide_web holberton.online web-02
```
Output:
```
The subdomain web-02 is an A record and points to 54.89.38.100
```

### Repository Information
- GitHub Repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x10-https_ssl
- File: 0-world_wide_web

# 1. HAproxy SSL Termination

## Task Description
Implement SSL termination on HAproxy, which involves configuring HAproxy to handle encrypted traffic, decrypt it, and pass it on to its destination.

### Requirements
- HAproxy should be listening on port TCP 443.
- HAproxy should accept SSL traffic.
- HAproxy should serve encrypted traffic that returns the root (/) of your web server.
- When querying the root of your domain name, the page returned must contain "Holberton School."
- Create a certificate using certbot.

### Example
```bash
curl -sI https://www.holberton.online
```
Output:
```
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 28 Feb 2017 01:52:04 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes
```
```bash
curl https://www.holberton.online
```
Output:
```
Holberton School for the win!
```

### Repository Information
- GitHub Repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x10-https_ssl
- File: 1-haproxy_ssl_termination

# 2. No Loophole in Your Website Traffic

## Task Description
Enforce HTTPS traffic by configuring HAproxy to automatically redirect HTTP traffic to HTTPS.

### Requirements
- Ensure the redirection is transparent to the user.
- HAproxy should return a 301 (Moved Permanently) for HTTP traffic.
- HAproxy should redirect HTTP traffic to HTTPS.

### Example
```bash
curl -sIL http://www.holberton.online
```
Output:
```
HTTP/1.1 301 Moved Permanently
Content-length: 0
Location: https://www.holberton.online/
Connection: close

HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 28 Feb 2017 02:19:18 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes
```

### Repository Information
- GitHub Repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x10-https_ssl
- File: 100-redirect_http_to_https
