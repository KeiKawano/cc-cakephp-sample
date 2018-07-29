CREATE USER 'dev_cc_user'@'localhost' IDENTIFIED BY 'dev_cc_pass';
GRANT ALL PRIVILEGES ON test.* TO 'dev_cc_user'@'localhost' WITH GRANT OPTION;