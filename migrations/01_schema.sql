DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;


CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);


create table properties (
  id serial primary key NOT NULL,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  title varchar(255) NOT NULL,
  description TEXT,
  thumbnail_photo_url varchar(255) NOT NULL,
  cover_photo_url varchar(255) NOT NULL,
  cost_per_night integer NOT NULL DEFAULT 0,
  parking_spaces integer NOT NULL DEFAULT 0,
  number_of_bathrooms integer NOT NULL DEFAULT 0,
  number_of_bedrooms integer NOT NULL DEFAULT 0,
  country varchar(255) NOT NULL,
  street varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  province varchar(255) NOT NULL,
  post_code varchar(255) NOT NULL,
  active boolean NOT NULL DEFAULT TRUE
);


create table reservations (
  id serial primary key NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  property_id integer REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);


create table property_reviews (
  id serial primary key NOT NULL,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
  rating SMALLINT NOT NULL DEFAULT 0,
  message text
);
