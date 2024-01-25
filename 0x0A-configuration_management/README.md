# Puppet Configuration Management

This repository contains Puppet manifests for configuring various tasks. The tasks are designed to run on an Ubuntu 20.04 LTS environment with Puppet 5.5 preinstalled.

## Versioning
Ensure your Ubuntu 20.04 VM has Puppet 5.5 preinstalled. To set up the environment, follow the steps below:

### Install puppet

```bash
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```

### Install puppet-lint

```bash
$ gem install puppet-lint
```

## Tasks

### Task 0: Create a file

**Objective:** Create a file in `/tmp` using Puppet.

**Requirements:**
- File path: `/tmp/school`
- File permission: 0744
- File owner: www-data
- File group: www-data
- File content: "I love Puppet"

**Example:**
```bash
$ puppet apply 0-create_a_file.pp
$ ls -l /tmp/school
-rwxr--r-- 1 www-data www-data 13 Mar 19 23:12 /tmp/school
$ cat /tmp/school
I love Puppet
```

### Task 1: Install a package

**Objective:** Install Flask from pip3 using Puppet.

**Requirements:**
- Install Flask
- Version must be 2.1.0

**Example:**
```bash
$ puppet apply 1-install_a_package.pp
$ flask --version
Python 3.8.10
Flask 2.1.0
Werkzeug 2.1.1
```

### Task 2: Execute a command

**Objective:** Create a manifest that kills a process named `killmenow` using the `exec` Puppet resource and `pkill`.

**Example:**
```bash
$ puppet apply 2-execute_a_command.pp
# Process is terminated
$ ./killmenow
Terminated
```
