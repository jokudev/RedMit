-- Change Log: V0.1.0
-- Migration script for creating 'users' table

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    enabled BOOLEAN NOT NULL DEFAULT true
);

-- Ensure that 'username' and 'email' are unique for each user
CREATE UNIQUE INDEX idx_username ON users (username);
CREATE UNIQUE INDEX idx_email ON users (email);
