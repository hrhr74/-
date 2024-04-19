CREATE TABLE books(
id INT PRIMARY KEY,
book_name VARCHAR(20),
publisher VARCHAR(25),
price DOUBLE
)
CREATE TABLE managers(
id INT PRIMARY KEY AUTO_INCREMENT,
PASSWORD VARCHAR(15)
)`books`
CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_password VARCHAR(16),
user_name VARCHAR(20),
user_sex VARCHAR(5) DEFAULT '男'
)
CREATE TABLE borrow(
book_id INT,
book_name VARCHAR(20),
user_id INT,
user_name VARCHAR(20),
PRIMARY KEY(book_id,user_id),
FOREIGN KEY(book_id)REFERENCES books(id),
FOREIGN KEY(user_id)REFERENCES users(user_id)
)