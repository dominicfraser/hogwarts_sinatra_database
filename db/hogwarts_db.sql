DROP TABLE houses;
DROP TABLE students;


CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_id INT4 REFERENCES houses(id),
  age INT4 CHECK (age > 0)
);

CREATE TABLE houses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

