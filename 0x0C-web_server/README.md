# Project: Web Server Configuration

## Overview

This project focuses on configuring an Nginx web server on Ubuntu 16.04 LTS. The tasks involve file transfer, Nginx installation, domain name setup, redirection, and custom 404 error page creation.

## Task 0: Transfer a File to Your Server

### Objective
Write a Bash script that transfers a file from a client to a server using `scp`.

### Instructions
1. Accept four parameters: path to the file, server IP, username for `scp`, and path to the SSH private key.
2. Display the usage if less than three parameters are passed.
3. Transfer the file to the user's home directory (`~/`) on the server.
4. Disable strict host key checking when using `scp`.

[Link to Task 0 Script](0x0C-web_server/0-transfer_file)

## Task 1: Install Nginx Web Server

### Objective
Install Nginx on the web-01 server and configure it to listen on port 80.

### Instructions
1. Use the `-y` option with the `apt-get` command.
2. Ensure Nginx listens on port 80.
3. Configure Nginx to return "Hello World!" when queried at the root (`/`) with a GET request using `curl`.
4. Write a Bash script to configure a new Ubuntu machine to meet the specified requirements.

[Link to Task 1 Script](0x0C-web_server/1-install_nginx_web_server)

## Task 2: Setup a Domain Name

### Objective
Configure a domain name with an A entry pointing to the web-01 server's IP address.

### Instructions
1. Provide the domain name without a subdomain.
2. Configure DNS records with an A entry.
3. Enter the domain in the Project website URL field in your profile.
4. Check the Registrar to verify the setup.

[Link to Task 2 Script](0x0C-web_server/2-setup_a_domain_name)

## Task 3: Redirection

### Objective
Configure Nginx to redirect `/redirect_me` to another page with a "301 Moved Permanently" status.

### Instructions
1. Use `sed` to replace a line with multiple lines.
2. Write a Bash script to configure a new Ubuntu machine to meet the specified requirements.

[Link to Task 3 Script](0x0C-web_server/3-redirection)

## Task 4: Not Found Page 404

### Objective
Configure Nginx to have a custom 404 page containing the string "Ceci n'est pas une page."

### Instructions
1. Ensure the page returns an HTTP 404 error code.
2. Include the string "Ceci n'est pas une page" in the page content.
3. Write a Bash script to configure a new Ubuntu machine to meet the specified requirements.

[Link to Task 4 Script](0x0C-web_server/4-not_found_page_404)

---

**Note:** This project assumes Ubuntu 16.04 LTS and requires execution on a Linux machine. Ensure that all Bash scripts are executable, pass Shellcheck without errors, and follow the specified guidelines.
