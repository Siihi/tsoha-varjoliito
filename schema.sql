CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    username TEXT,
    password TEXT,
    rights TEXT
);

CREATE TABLE flights
(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users,
    date TIMESTAMP,
    start_location TEXT,
    end_location TEXT,
    duration TIME,
    altitude_difference INT,
    distance INT,
    max_altitude INT,
    max_sink INT,
    max_raise INT,
    weather TEXT,
    notes TEXT,
    share TEXT,
    visible INT
);

CREATE TABLE userinfo
(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users,
    name TEXT,
    wing TEXT,
    level TEXT
);

CREATE TABLE maintenances
(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users,
    date DATE,
    name TEXT
);
