# Project: Web Stack Monitoring

## Overview

This project focuses on setting up monitoring for a web stack using Datadog, a cloud-based monitoring and analytics platform. The tasks include signing up for Datadog, installing the Datadog agent on a server, configuring monitors for system metrics, and creating a dashboard to visualize various metrics.

## Requirements

### General

- Editors: vi, vim, emacs
- Interpretation: Ubuntu 16.04 LTS
- Line Endings: All files should end with a new line
- README.md: Mandatory at the root of the project folder
- Bash Scripts: Executable and Shellchecked (version 0.3.7)
- Shebang: First line of Bash scripts should be `#!/usr/bin/env bash`
- Comment: Second line of Bash scripts should be a comment explaining the script's purpose

### Servers

| Name             | Username | IP               | State   |
|------------------|----------|------------------|---------|
| 311679-web-01    | ubuntu   | 18.207.207.57    | running |
| 311679-web-02    | ubuntu   | 100.25.221.34    | running |
| 311679-lb-01     | ubuntu   | 54.146.59.177    | running |

## Tasks

### Task 0: Sign up for Datadog and Install datadog-agent

- Visit [Datadog](https://www.datadoghq.com/) and sign up for a free account.
- Select statistics to monitor and install the Datadog agent on web-01.
- Create an application key and copy-paste the DataDog API key and application key in your Intranet user profile.
- Ensure web-01 is visible in Datadog under the hostname XX-web-01.

### Task 1: Monitor Some Metrics

- Set up monitors in the Datadog dashboard to track the number of read and write requests issued to the device per second.

### Task 2: Create a Dashboard

- Create a new Datadog dashboard and add at least 4 widgets to display different metrics.
- Save the dashboard_id in the answer file `2-setup_datadog`.

## Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- **Directory:** 0x18-webstack_monitoring
- **Files:**
  - `README.md`
  - `0-install_datadog.sh`
  - `1-setup_datadog.sh`
  - `2-setup_datadog` (answer file)

For more information, refer to individual task directories. Feel free to reach out for any questions or assistance.

Happy monitoring! 📊
