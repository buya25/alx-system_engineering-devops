CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
GRANT SELECT ON *.* TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
