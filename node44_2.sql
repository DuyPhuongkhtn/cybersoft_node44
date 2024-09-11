# tạo database
CREATE DATABASE node44;
USE node44;
# tạo table

# tạo data

# tương tác với data
# Query (lấy dữ liệu)
# thêm, xóa, sửa

USE node44
# VÍ DỤ VỀ INNER JOIN

-- Create the table
CREATE TABLE videos (
    video_id INT PRIMARY KEY AUTO_INCREMENT,
    video_name VARCHAR(50),
    descriptions VARCHAR(255)
);

-- Insert 20 sample rows into the table
INSERT INTO videos (video_name, descriptions) VALUES
('Introduction to C#', 'A beginner-level introduction to C# programming'),
('What is the params keyword?', 'Explanation and use cases of the params keyword in C#'),
('Understanding Arrays in C#', 'An in-depth look at arrays and how to use them in C#'),
('Classes and Objects', 'Exploring object-oriented programming in C# with practical examples'),
('Methods in C#', 'Introduction to methods, parameters, and return types in C#'),
('Inheritance in C#', 'Understanding inheritance and its use in OOP in C#'),
('Polymorphism in C#', 'Learn how polymorphism works in C# with practical examples'),
('Exception Handling in C#', 'How to handle errors using try, catch, and finally blocks'),
('File Handling in C#', 'Working with files in C# for reading and writing data'),
('Asynchronous Programming in C#', 'An introduction to async and await for asynchronous code'),
('Introduction to LINQ', 'Exploring LINQ and its powerful features for querying collections'),
('Delegates and Events', 'Understanding how to work with delegates and events in C#'),
('Lambda Expressions', 'Introduction to lambda expressions and their usage in C#'),
('What if: Variables Change Types?', 'A fun exploration of dynamic variables and type changes in C#'),
('Switch Case Feature in C#', 'Understanding the switch statement in C# and its practical uses'),
('Working with Databases in C#', 'How to connect and interact with databases using C#'),
('Entity Framework Basics', 'Learn how to use Entity Framework for database management in C#'),
('Debugging C# Code', 'Tips and techniques for debugging your C# code effectively'),
('Creating a Simple Web API', 'How to build a simple Web API using C# and ASP.NET Core'),
('Game Development in C#', 'Introduction to basic game development concepts in C#')
;

SELECT * FROM videos

# tạo table trung gian user_like
create table user_like(
	id INT PRIMARY KEY AUTO_INCREMENT,
	
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	
	video_id INT,
	FOREIGN KEY(video_id) REFERENCES videos(video_id)
)

select * from users

# lưu ý: user_id và video_id phải có trong table users và videos
INSERT INTO user_like (user_id, video_id) VALUES
(1, 1),
(3, 3),
(1, 4),
(3, 6),
(1, 7),
(3, 9),
(1, 10),
(3, 12),
(1, 13),
(3, 15),
(1, 16),
(3, 18),
(1, 19)
	description VARCHAR(255),
	
	type_id INT,
	FOREIGN KEY(type_id) REFERENCES food_type(type_id) ON DELETE CASCADE
)

INSERT INTO food (food_name, image, price, description, type_id) VALUES
('Margherita Pizza', 'https://example.com/images/margherita_pizza.jpg', 12.99, 'Classic Italian pizza with tomato, mozzarella, and basil', 1),
('Kung Pao Chicken', 'https://example.com/images/kung_pao_chicken.jpg', 10.99, 'Spicy stir-fried chicken with peanuts and vegetables', 2),
('Sushi Platter', 'https://example.com/images/sushi_platter.jpg', 25.50, 'Assorted sushi rolls with fresh fish and vegetables', 3),
('Tacos al Pastor', 'https://example.com/images/tacos_al_pastor.jpg', 8.99, 'Traditional Mexican tacos with marinated pork', 4),
('Butter Chicken', 'https://example.com/images/butter_chicken.jpg', 15.99, 'Rich and creamy Indian curry with butter and spices', 5),
('Croissant', 'https://example.com/images/croissant.jpg', 3.50, 'Buttery and flaky French pastry', 6),
('Greek Salad', 'https://example.com/images/greek_salad.jpg', 9.99, 'Fresh salad with feta cheese, olives, and cucumber', 7),
('Pad Thai', 'https://example.com/images/pad_thai.jpg', 11.99, 'Popular Thai stir-fried noodle dish with peanuts and lime', 8),
('Pho', 'https://example.com/images/pho.jpg', 10.50, 'Vietnamese noodle soup with beef and herbs', 9),
('Bibimbap', 'https://example.com/images/bibimbap.jpg', 13.50, 'Korean mixed rice bowl with vegetables and meat', 10),
('Hummus', 'https://example.com/images/hummus.jpg', 6.99, 'Classic Mediterranean dip made from chickpeas and tahini', 11),
('Burger', 'https://example.com/images/burger.jpg', 14.50, 'American-style burger with beef patty and toppings', 12),
('Paella', 'https://example.com/images/paella.jpg', 18.99, 'Traditional Spanish rice dish with seafood and saffron', 13),
('Shawarma', 'https://example.com/images/shawarma.jpg', 9.50, 'Middle Eastern wrap with spiced meat and vegetables', 14),
('Feijoada', 'https://example.com/images/feijoada.jpg', 16.99, 'Brazilian black bean stew with pork and beef', 15),
('Baklava', 'https://example.com/images/baklava.jpg', 5.99, 'Sweet Turkish dessert made with layers of filo pastry and nuts', 16),
('Tagine', 'https://example.com/images/tagine.jpg', 14.99, 'Moroccan slow-cooked stew with meat and vegetables', 17),
('Injera with Doro Wat', 'https://example.com/images/injera_doro_wat.jpg', 13.99, 'Ethiopian flatbread with spicy chicken stew', 18),
('Jerk Chicken', 'https://example.com/images/jerk_chicken.jpg', 12.99, 'Caribbean spicy grilled chicken with jerk seasoning', 19),
('Schnitzel', 'https://example.com/images/schnitzel.jpg', 11.99, 'German breaded and fried meat cutlet', 20);

-- table order
CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	
	food_id INT,
	FOREIGN KEY(food_id) REFERENCES food(food_id),
	
	amount INT,
	discount_code VARCHAR(30),
	
	arr_sub_id VARCHAR(255)
)

CREATE TABLE rate_res (
	rate_res_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    res_id INT,
    amount INT,
    date_rate DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id) ON DELETE CASCADE
);

INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES
(1, 1, 5, '2024-09-01 10:30:00'),
(2, 2, 4, '2024-09-01 11:00:00'),
(3, 3, 3, '2024-09-01 11:30:00'),
(1, 2, 5, '2024-09-02 12:00:00'),
(2, 1, 4, '2024-09-02 12:30:00'),
(3, 1, 2, '2024-09-02 13:00:00'),
(1, 3, 5, '2024-09-03 14:00:00'),
(2, 3, 3, '2024-09-03 14:30:00'),
(3, 2, 5, '2024-09-03 15:00:00'),
(1, 4, 4, '2024-09-04 15:30:00'),
(2, 5, 5, '2024-09-04 16:00:00'),
(3, 6, 4, '2024-09-04 16:30:00'),
(1, 6, 5, '2024-09-05 17:00:00'),
(2, 5, 3, '2024-09-05 17:30:00'),
(3, 4, 5, '2024-09-05 18:00:00'),
(1, 7, 4, '2024-09-06 18:30:00'),
(2, 8, 5, '2024-09-06 19:00:00'),
(3, 9, 3, '2024-09-06 19:30:00'),
(1, 8, 4, '2024-09-07 20:00:00'),
(2, 7, 5, '2024-09-07 20:30:00');

-- Create the like_res table
CREATE TABLE like_res (
	like_res_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    res_id INT,
    date_like DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id) ON DELETE CASCADE
);
ADD COLUMN


INSERT INTO like_res (user_id, res_id, date_like) VALUES
(1, 1, '2024-09-01 09:30:00'),
(2, 2, '2024-09-01 10:00:00'),
(3, 3, '2024-09-01 10:30:00'),
(1, 2, '2024-09-02 11:00:00'),
(2, 1, '2024-09-02 11:30:00'),
(3, 1, '2024-09-02 12:00:00'),
(1, 3, '2024-09-03 12:30:00'),
(2, 3, '2024-09-03 13:00:00'),
(3, 2, '2024-09-03 13:30:00'),
(1, 4, '2024-09-04 14:00:00'),
(2, 5, '2024-09-04 14:30:00'),
(3, 6, '2024-09-04 15:00:00'),
(1, 6, '2024-09-05 15:30:00'),
(2, 5, '2024-09-05 16:00:00'),
(3, 4, '2024-09-05 16:30:00'),
(1, 7, '2024-09-06 17:00:00'),
(2, 8, '2024-09-06 17:30:00'),
(3, 9, '2024-09-06 18:00:00'),
(1, 8, '2024-09-07 18:30:00'),
(2, 7, '2024-09-07 19:00:00');



INSERT INTO orders (user_id, food_id, amount, discount_code, arr_sub_id) VALUES
(1, 1, 2, 'DISCOUNT10', '1,2'),
(2, 2, 1, 'DISCOUNT15', '3'),
(3, 3, 3, NULL, '4'),
(1, 4, 1, 'DISCOUNT20', '5'),
(2, 5, 2, 'DISCOUNT25', NULL),
(3, 6, 1, 'WELCOME5', '6,7'),
(1, 7, 3, 'NEWUSER', '8'),
(2, 8, 1, NULL, '9'),
(3, 9, 2, 'HOLIDAY20', '10'),
(1, 10, 1, 'SEASONAL5', '11'),
(2, 1, 2, 'DISCOUNT10', '12'),
(3, 2, 1, 'DISCOUNT15', NULL),
(1, 3, 3, 'SUMMER15', '13'),
(2, 4, 1, 'DISCOUNT20', '14,15'),
(3, 5, 2, 'FALLSALE', '16'),
(1, 6, 1, 'WINTER10', '17'),
(2, 7, 3, 'DISCOUNT30', NULL),
(3, 8, 1, 'WELCOME5', '18'),
(1, 9, 2, NULL, '19'),
(2, 10, 1, 'HOLIDAY15', '20');


# REMOVE USER -> REMOVE COMMENT -> REMOVE LIKE -> SUBCRIBE -> .........-> USER
# PROCEDURE 
# be call procedure

# trigger

# phân quyền user trong SQL