CREATE DATABASE catalog

\c catalog

CREATE TABLE game (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    multiplayer BOOLEAN,
    last_played_at DATE,
    publish_date DATE,
    archived BOOLEAN,
    author_id INTEGER REFERENCES author (id),
    genre_id INTEGER REFERENCES genre (id),
    label_id INTEGER REFERENCES label (id)
);

CREATE TABLE author (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(250)
    last_name VARCHAR(250)
);
