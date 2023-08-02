-- Create the FIFA database
CREATE DATABASE fifa;
USE fifa;

-- Create the drinks table
CREATE TABLE tb_drinks (
   drink_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   drink_nm VARCHAR(255) NOT NULL,
   price FLOAT NOT NULL
);

-- Insert some sample data into the drinks table
INSERT INTO tb_drinks (drink_nm, price) VALUES 
('Cola', 3.00),
('Water', 2.00),
('Beer', 5.00);

-- Create the foods table
CREATE TABLE tb_foods (
   food_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   food_nm VARCHAR(255) NOT NULL,
   price FLOAT NOT NULL
);

-- Insert some sample data into the foods table
INSERT INTO tb_foods (food_nm, price) VALUES 
('Pizza', 10.00),
('Burger', 15.00),
('Fries', 5.00),
('HotDog', 10.00),
('Popcorn', 15.00),
('Donut', 5.00);

-- Create the users table
CREATE TABLE tb_users (
  user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_nm VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  user_password VARCHAR(255) NOT NULL,
  user_type ENUM('public', 'team') NOT NULL,
  drink_id INT DEFAULT NULL, -- Allow NULL for drink_id
  food_id INT DEFAULT NULL,  -- Allow NULL for food_id
  FOREIGN KEY (drink_id) REFERENCES tb_drinks(drink_id),
  FOREIGN KEY (food_id) REFERENCES tb_foods(food_id)
);

-- Insert some sample data into the users table with manually assigned id values
INSERT INTO tb_users (user_id, user_nm, email, user_password, user_type, drink_id, food_id) VALUES 
(1001, 'John Doe', 'johndoe@example.com', 'password123', 'public', 1, 1),
(1002, 'Jane Doe', 'janedoe@example.com', 'password456', 'public', 2, 2),
(1003, 'Team A', 'teama@example.com', 'password789', 'team', 3, 3);

-- Create the uniforms table
CREATE TABLE tb_uniforms (
   uniform_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   uniform_nm VARCHAR(255) NOT NULL,
   country VARCHAR(255) NOT NULL,
   image VARCHAR(255) NOT NULL
);

-- Insert some sample data into the uniforms table with manually assigned id values
INSERT INTO tb_uniforms (uniform_id, uniform_nm, country, image) VALUES 
(2005, 'Germany', 'Germany', 'germany.png'),
(2006, 'Brazil', 'Brazil', 'brazil.png'),
(2007, 'Brazil', 'Brazil', 'brazil.png');

-- Create the votes table
CREATE TABLE tb_votes (
   vote_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   user_id INT NOT NULL,
   uniform_id INT NOT NULL,
   vote_date TIMESTAMP NOT NULL,
   vote_type VARCHAR(255) NOT NULL,
   FOREIGN KEY (user_id) REFERENCES tb_users(user_id),
   FOREIGN KEY (uniform_id) REFERENCES tb_uniforms(uniform_id)
);

-- Insert some sample data into the votes table with manually assigned id values
INSERT INTO tb_votes (vote_id, user_id, uniform_id, vote_date, vote_type) VALUES 
(3001, 1001, 2001, '2023-03-08', 'vote'),
(3002, 1002, 2002, '2023-03-09', 'vote'),
(3003, 1003, 2003, '2023-03-10', 'vote');

-- Create the events table
CREATE TABLE tb_events (
   event_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   event_name VARCHAR(255) NOT NULL,
   event_date TIMESTAMP NOT NULL,
   event_location VARCHAR(255) NOT NULL
);

-- Insert some sample data into the events table with manually assigned id values
INSERT INTO tb_events (event_id, event_name, event_date, event_location) VALUES 
(4001,'2023 FIFA Women''s World Cup Opening Ceremony', '2023-06-07', 'Paris, France'),
(4002,'2023 FIFA Women''s World Cup Group Stage', '2023-06-08', 'Paris, France'),
(4003,'2023 FIFA Women''s World Cup Round of 16', '2023-06-22', 'Paris, France'),
(4004,'2023 FIFA Women''s World Cup Quarter-Finals', '2023-06-25', 'Paris, France'),
(4005,'2023 FIFA Women''s World Cup Semi-Finals', '2023-06-28', 'Paris, France'),
(4006,'2023 FIFA Women''s World Cup Third-Place Play-Off', '2023-07-01', 'Paris, France'),
(4007,'2023 FIFA Women''s World Cup Final', '2023-07-03', 'Paris, France');

-- Create the tickets table
CREATE TABLE tb_tickets (
   ticket_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   event_id INT NOT NULL,
   FOREIGN KEY (event_id) REFERENCES tb_events(event_id)
);

-- Create the competitors table
CREATE TABLE tb_competitors (
   competitor_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   event_id INT NOT NULL,
   name_players VARCHAR(255) NOT NULL,
   country VARCHAR(255) NOT NULL,
   team VARCHAR(255) NOT NULL,
   FOREIGN KEY (event_id) REFERENCES tb_events(event_id)
);

-- Insert some sample data into the competitors table with manually assigned id values
INSERT INTO tb_competitors (competitor_id, event_id, name_players, country, team) VALUES 
(5001, 4001, 'Marta, Christiane, Formiga', 'Brazil', 'Brazil'),
(5002, 4001, 'Marie-Antoinette Katoto, Wendie Renard, Amandine Henry', 'France', 'France'),
(5003, 4001, 'Alexandra Popp, Klara Bühl, Sara Däbritz', 'Germany', 'Germany');

-- Create the competitions table
CREATE TABLE tb_competitions (
   competition_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   event_id INT NOT NULL,
   name_games VARCHAR(255) NOT NULL,
   data_event TIMESTAMP NOT NULL,
   FOREIGN KEY (event_id) REFERENCES tb_events(event_id)
);

-- Insert some sample data into the competitions table with manually assigned id values
INSERT INTO tb_competitions (competition_id, event_id, name_games, data_event) VALUES 
(6001, 4001, 'Brazil vs. France', '2023-06-08'),
(6002, 4001, 'Germany vs. Unknown', '2023-06-09');

-- Select the number of votes for each uniform
SELECT uniform_nm, COUNT(*) AS name_count FROM tb_uniforms GROUP BY uniform_nm ORDER BY name_count DESC, uniform_nm;

