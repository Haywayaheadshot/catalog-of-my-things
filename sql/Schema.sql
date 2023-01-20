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

CREATE TABLE book (
    id BIGSERIAL NOT NULL PRIMARY,
    publish_date DATE,
    archived BOOLEAN,
    cover_state BOOLEAN,
    author_id INTEGER REFERENCES author (id),
    genre_id INTEGER REFERENCES genre (id),
    label_id INTEGER REFERENCES label (id)
);

CREATE TABLE label (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    title VARCHAR(250),
    color VARCHAR(250)
)

CREATE TABLE music_album (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    publish_date DATE,
    archived BOOLEAN,
    on_spotify BOOLEAN
    author_id INTEGER REFERENCES author (id),
    genre_id INTEGER REFERENCES genre (id),
    label_id INTEGER REFERENCES label (id)
)

CREATE TABLE genre (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    genre_name VARCHAR(250)
);


CREATE INDEX author_index ON author(id);
CREATE INDEX genre_index ON genre(id);
CREATE INDEX label_index ON label(id);