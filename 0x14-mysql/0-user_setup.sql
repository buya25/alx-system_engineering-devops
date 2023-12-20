CREATE USER IF NOT EXISTS 'holberton_user'@'%' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'%';
GRANT SELECT ON *.* TO 'holberton_user'@'%';
FLUSH PRIVILEGES;
