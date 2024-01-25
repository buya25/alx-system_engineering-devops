# Project README: Configuration Management with SSH

This project focuses on configuring SSH for secure and efficient communication with servers. The tasks involve using private keys, creating an SSH key pair, configuring the SSH client, and allowing access to servers.

## Project Structure

- **Folder Structure:**
  - The project is organized into folders.
  - Each task corresponds to a specific directory.
  - Bash scripts are used to automate SSH-related tasks.

## Task Descriptions

### Task 0: Use a Private Key

- **Script:** [0-use_a_private_key](./0x0B-ssh/0-use_a_private_key)
- **Description:**
  - Establish an SSH connection to a server using the private key `~/.ssh/school`.
  - Use only single-character flags for the `ssh` command.
  - The connection should be made with the user `ubuntu`.

### Task 1: Create an SSH Key Pair

- **Script:** [1-create_ssh_key_pair](./0x0B-ssh/1-create_ssh_key_pair)
- **Description:**
  - Generate an RSA key pair with a private key named `school`.
  - The key should be protected by the passphrase "betty."
  - Display key details after creation.

### Task 2: Client Configuration File

- **File:** [2-ssh_config](./0x0B-ssh/2-ssh_config)
- **Description:**
  - Configure the local SSH client to use the private key `~/.ssh/school`.
  - Configure the client to refuse authentication using a password.

### Task 3: Let Me In!

- **Description:**
  - Add the provided SSH public key to the server's `ubuntu` user.
  - Allow secure access to the server using the added public key.

## Usage Instructions

1. **Clone Repository:**
   ```bash
   git clone https://github.com/buya25/alx-system_engineering-devops.git
   cd alx-system_engineering-devops/0x0B-ssh
   ```

2. **Execute Scripts:**
   - Make scripts executable if needed:
     ```bash
     chmod +x SCRIPT_NAME
     ```
   - Run each script according to the task requirements.

3. **Review Results:**
   - Check the script outputs and verify successful SSH configurations.

## Note

- Ensure that the private key `~/.ssh/school` is available and properly configured.
- Follow the provided SSH key for server access in Task 3.
