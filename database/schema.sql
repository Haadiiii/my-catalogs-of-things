CREATE DATABASE catalog_of_things;

CREATE TABLE label(
 id INTEGER GENERATED PRIMARY KEY,
 title VARCHAR(50),
 color VARCHAR(50)
);

CREATE TABLE book(
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  publisher VARCHAR(50),
  cover_state VARCHAR(15),
  publish_date DATE,
  archived BOOLEAN,
  label_id  INT,
  FOREIGN KEY (label_id) REFERENCES label(id),
);