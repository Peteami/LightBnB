INSERT INTO users (name, email, password) 
VALUES ('Marc St-Onge', 'marct@st-onge.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Steve Leclerc', 'steve@leclerc.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Marie Leboeuf', 'marie@leboeuf.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES(1, 'Best Casa', 'description', 'thumb1.png', 'cover.png', 355, 2, 1, 2, 'Canada', 'Elgin', 'Ottawa', 'Ontario', 'K6A2A5', TRUE),
(1, 'Nice Casa', 'description', 'thumb2.png', 'cover1.png', 355, 2, 1, 2, 'United States', 'Lafontaine', 'Beverly Hills', 'California', '90210', FALSE),
(2, 'Beautiful Casa', 'description', 'thumb3.png', 'cover2.png', 355, 2, 1, 2, 'Mexico', 'Constituyentes', 'Playa Del Carmen', 'Quintana Roo', '77712', TRUE);



INSERT INTO reservations (start_date, end_date, propery_id, guest_id) 
VALUES ('2020-12-20', '2020-12-31', 1, 3),
('2021-01-05', '2021-02-18', 3, 1),
('2021-05-01', '2021-08-15', 1, 2);


INSERT INTO property_reviews (guest_id, propery_id, reservation_id, rating, message) 
VALUES (3, 1, 1, 4, 'It was nice.'),
(1, 3, 2, 'It was ok.'),
(2, 1, 3, 'It was wonderful.');

