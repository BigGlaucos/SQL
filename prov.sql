CREATE DATABASE fifa;
USE fifa;

CREATE TABLE users (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_nm VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  user_password VARCHAR(255) NOT NULL,
  # ENUM =  lista de valores possíveis para uma coluna.
  user_type ENUM('public', 'team') NOT NULL
);
 
CREATE TABLE uniforms (
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  uniform_nm VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  image VARCHAR(255) NOT NULL
);

CREATE TABLE votes (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  uniform_id INT NOT NULL,
  vote_date TIMESTAMP NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (uniform_id) REFERENCES uniforms(id)
);

CREATE TABLE td_events (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  event_name VARCHAR(255) NOT NULL,
  event_date TIMESTAMP NOT NULL
);

CREATE TABLE tickets (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  event_id INT NOT NULL,
  date DATETIME NOT NULL,
  time TIME NOT NULL,
  seat VARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  FOREIGN KEY (event_id) REFERENCES _events(id)
);

CREATE TABLE competitors (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  event_id INT NOT NULL,
  name_players VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  team VARCHAR(255) NOT NULL,
  FOREIGN KEY (event_id) REFERENCES _events(id)
);

CREATE TABLE competitions (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  event_id INT NOT NULL,
  nam_games VARCHAR(255) NOT NULL,
  DATA_event TIMESTAMP NOT NULL,
  FOREIGN KEY (event_id) REFERENCES _events(id)
);

CREATE TABLE foods (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  food_nm VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL
);

CREATE TABLE drinks (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  drink_nm VARCHAR(255) NOT NULL,
  price FLOAT  NOT NULL
);
