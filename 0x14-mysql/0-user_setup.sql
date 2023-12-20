-- script to setup replica user on master sql server

CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT ON *.* TO 'holberton_user'@'localhost';

mysql -uholberton_user -p -e "SHOW GRANTS FOR 'holberton_user'@'localhost'"
