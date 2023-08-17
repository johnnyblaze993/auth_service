create schema jwt_auth;

-- Users Table
CREATE TABLE jwt_auth.users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Refresh Tokens Table
CREATE TABLE jwt_auth.refresh_tokens (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES jwt_auth.users(id) ON DELETE CASCADE,
    token VARCHAR(1024) NOT NULL, 
    expiry_date TIMESTAMPTZ NOT NULL
);

--Add new users
INSERT INTO jwt_auth.users (username, password) VALUES
('john', '123'),
('test', '123'),
('brock', '123'),
('misty', '123'),
('ash', '123');