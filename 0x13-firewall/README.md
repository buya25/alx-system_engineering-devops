# Project: Firewall Configuration for Blocking Incoming Traffic (Task 0)

## Overview

This project focuses on configuring the Uncomplicated Firewall (ufw) on the web-01 server to block all incoming traffic except for specific TCP ports. The task involves setting up rules to allow traffic on ports 22 (SSH), 443 (HTTPS SSL), and 80 (HTTP). The provided commands and configurations should be implemented on the web-01 server.

## Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/your-username/alx-system_engineering-devops)
- **Directory:** 0x13-firewall
- **File:** 0-block_all_incoming_traffic_but

## Requirements

### Software Requirements

- ufw (Uncomplicated Firewall)

### Configuration Requirements

- The configuration must be applied to the web-01 server.
- The ufw rules should block all incoming traffic, allowing only the following TCP ports:
  - 22 (SSH)
  - 443 (HTTPS SSL)
  - 80 (HTTP)

## Implementation

To achieve the specified firewall configuration on web-01, follow the steps below:

1. Install ufw if not already installed:

   ```bash
   sudo apt-get update
   sudo apt-get install ufw
   ```

2. Configure ufw to block all incoming traffic except for the required ports:

   ```bash
   # Reset ufw to default settings
   sudo ufw --force reset

   # Set default policies to deny incoming and allow outgoing traffic
   sudo ufw default deny incoming
   sudo ufw default allow outgoing

   # Allow SSH (port 22), HTTP (port 80), and HTTPS (port 443)
   sudo ufw allow 22/tcp
   sudo ufw allow 80/tcp
   sudo ufw allow 443/tcp

   # Enable the firewall
   sudo ufw enable
   ```

3. Verify the ufw status to ensure the rules are applied correctly:

   ```bash
   sudo ufw status
   ```

## Additional Notes

- It is recommended to test the configuration on a non-production system before applying it to a live environment.
- Ensure that the ufw rules do not interfere with other required services.

## Author

- Your Name
- GitHub: [Your GitHub Profile](https://github.com/your-username)

Feel free to provide additional information, troubleshooting steps, or any other relevant details in the README file.
