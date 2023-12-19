# Project: MySQL Tasks (0x14)

## Overview

This project involves setting up MySQL on two servers (web-01 and web-02), creating users, configuring replication, and implementing a backup solution. The tasks are outlined below:

### Task 1: Install MySQL

Install MySQL on both web-01 and web-02 servers. Ensure that the MySQL distribution is 5.7.x.

#### Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/your-username/alx-system_engineering-devops)
- **Directory:** 0x14-mysql

#### Example

```bash
ubuntu@229-web-01:~$ mysql --version
mysql  Ver 14.14 Distrib 5.7.25, for Linux (x86_64) using  EditLine wrapper
ubuntu@229-web-01:~$
```

### Task 2: Let us in!

Create a MySQL user named `holberton_user` on both web-01 and web-02. Grant necessary permissions for checking the replication status.

#### Example

```bash
ubuntu@229-web-01:~$ mysql -uholberton_user -p -e "SHOW GRANTS FOR 'holberton_user'@'localhost'"
Enter password:
+-----------------------------------------------------------------+
| Grants for holberton_user@localhost                             |
+-----------------------------------------------------------------+
| GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost' |
+-----------------------------------------------------------------+
ubuntu@229-web-01:~$
```

### Task 3: If only you could see what I've seen with your eyes

Create a database named `tyrell_corp` on web-01, add a table named `nexus6`, and insert at least one entry. Grant `SELECT` permissions to `holberton_user`.

#### Example

```bash
ubuntu@229-web-01:~$ mysql -uholberton_user -p -e "use tyrell_corp; select * from nexus6"
Enter password:
+----+-------+
| id | name  |
+----+-------+
|  1 | Leon  |
+----+-------+
ubuntu@229-web-01:~$
```

### Task 4: Quite an experience to live in fear, isn't it?

Create a new user `replica_user` on web-01 for the replica server. Ensure it has appropriate permissions for replication.

#### Example

```bash
ubuntu@229-web-01:~$ mysql -uholberton_user -p -e 'SELECT user, Repl_slave_priv FROM mysql.user'
+------------------+-----------------+
| user             | Repl_slave_priv |
+------------------+-----------------+
| root             | Y               |
| mysql.session    | N               |
| mysql.sys        | N               |
| debian-sys-maint | Y               |
| holberton_user   | N               |
| replica_user     | Y               |
+------------------+-----------------+
ubuntu@229-web-01:~$
```

### Task 5: Setup a Primary-Replica infrastructure using MySQL

Configure a primary-replica setup with MySQL. The primary server must be on web-01, and the replica server must be on web-02.

#### Requirements:

- MySQL primary must be hosted on web-01 (comment out `bind-address`).
- MySQL replica must be hosted on web-02.
- Setup replication for the MySQL database named `tyrell_corp`.
- Provide the MySQL primary configuration as the answer file `4-mysql_configuration_primary`.
- Provide the MySQL replica configuration as an answer file `4-mysql_configuration_replica`.

#### Example

(web-01)
```bash
ubuntu@web-01:~$ mysql -uholberton_user -p
Enter password:
Welcome to the MySQL monitor...
mysql> show master status;
+------------------+----------+--------------------+------------------+
| File             | Position | Binlog_Do_DB       | Binlog_Ignore_DB |
+------------------+----------+--------------------+------------------+
| mysql-bin.000009 |      107 | tyrell_corp        |                  |
+------------------+----------+--------------------+------------------+
1 row in set (0.00 sec)
mysql>
```

(web-02)
```bash
root@web-02:/home/ubuntu# mysql -uholberton_user -p
Enter password:
Welcome to the MySQL monitor...
mysql> show slave status\G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: 158.69.68.78
                  Master_User: replica_user
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000009
          Read_Master_Log_Pos: 107
               ...
1 row in set (0.00 sec)
mysql>
```

### Task 6: MySQL backup

Write a Bash script that generates a MySQL dump, creates a compressed archive, and follows specific requirements.

#### Requirements:

- MySQL dump must contain all databases.
- MySQL dump must be named `backup.sql`.
- MySQL dump file must be compressed to a `tar.gz` archive.
- Archive must have the name format: `day-month-year.tar.gz`.
- User to connect to the MySQL database must be `root`.
- Bash script accepts one argument (password for MySQL database).

#### Example

```bash
ubuntu@03-web-01:~$ ls
5-mysql_backup
ubuntu@03-web-01:~$ ./5-mysql_backup mydummypassword
backup.sql
ubuntu@03-web-01:~$ ls
01-03-2017.tar.gz  5-mysql_backup  backup.sql
ubuntu@03-web-01:~$ file 01-03-2017.tar.gz
01-03-2017.tar.gz: gzip compressed data, from Unix, last modified: Wed Mar  1 23:38:09 2017
ubuntu@03-web-01:~$
```

#### Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/buya25/alx-system_engineering-devops)
- **Directory:** 0x14-mysql
- **File:** 5-mysql_backup

## Author

- Yabs Mullo
- GitHub: [Your GitHub Profile](https://github.com/buya25)

Feel free to add any additional information, troubleshooting steps, or details to the README file.
