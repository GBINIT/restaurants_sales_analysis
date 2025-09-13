-- RESTAURANT ANALYSIS 

-- Creating user table 
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(20),
    city VARCHAR(20),
    signup_date DATE,
    is_premium BOOLEAN 
);

-- Creating restaurants table
DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants(
	restaurant_id	INT PRIMARY KEY,
	restaurant_name	VARCHAR(20),
	city	VARCHAR(20),
	cuisine VARCHAR(20)
)

-- creating delevery_patner table
DROP TABLE IF EXISTS delivery_patner;
CREATE TABLE delivery_patner(
	partner_id	INT PRIMARY KEY ,
	partner_name VARCHAR(20),
	city VARCHAR(20),
	rating DECIMAL(3,2)
)

-- CREATING ORDERS TABLE
DROP TABLE IF EXISTS ORDERS;
CREATE TABLE ORDERS (
	order_id INT PRIMARY KEY ,	
	user_id	INT REFERENCES users(user_id),
	restaurant_id INT REFERENCES restaurants(restaurant_id),
	partner_id	INT REFERENCES delivery_patner(partner_id),
	order_date TIMESTAMP,
	amount INT ,
	payment_method	VARCHAR(20),
	delivery_time_min INT,
	order_status VARCHAR(10)
)

-- CREATING RATINGS TABLE
DROP TABLE IF EXISTS ratings;
CREATE TABLE RATINGS(
	rating_id	INT PRIMARY KEY ,
	order_id INT REFERENCES ORDERS(order_id),
	user_rating INT
)
