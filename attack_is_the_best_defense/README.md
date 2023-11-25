# Project: Attack is the Best Defense

## Overview

This project explores network security concepts by engaging in ARP spoofing, sniffing unencrypted traffic, and performing a dictionary attack. The tasks involve using tools like `tcpdump`, `telnet`, and `hydra` to analyze network traffic and test the security of password-based authentication systems.

## Task 0: ARP Spoofing and Sniffing Unencrypted Traffic

### Objective
Sniff unencrypted traffic using `tcpdump` while a user authenticates into a server via `telnet`.

### Instructions
1. Execute the script `user_authenticating_into_server` locally on your Linux machine.
2. Use `tcpdump` to sniff the network and find the password.
3. Paste the discovered password in the answer file.

### Important Note
The provided script may display "Authentication failed: Bad username / password" due to the deletion of the Sendgrid account. This is normal, and you can't verify the password via Sendgrid.

[Link to Task 0 Script](link-to-script)

[Link to Task 0 Directory](link-to-repo/attack_is_the_best_defense/0-sniffing)

## Task 1: Dictionary Attack

### Objective
Perform a dictionary attack on an SSH account using Docker, `hydra`, and a password dictionary.

### Instructions
1. Install Docker on your Ubuntu machine.
2. Pull and run the Docker image `sylvainkalache/264-1` with the command:
   ```bash
   docker run -p 2222:22 -d -ti sylvainkalache/264-1
   ```
3. Find or create a password dictionary.
4. Install `hydra` and use it to perform a brute force attack on the SSH account `sylvain`.
5. Share the discovered password in the answer file.

### Additional Information
- Docker container runs locally, so use IP `127.0.0.1` and port `2222` for SSH.
- The password is 11 characters long.

[Link to Task 1 Directory](link-to-repo/attack_is_the_best_defense/1-dictionary_attack)

---

**Disclaimer:** This project is for educational purposes only. Ensure that you have the necessary permissions to perform security-related activities. Use ethical hacking practices and respect privacy and legal guidelines.
