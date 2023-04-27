CREATE TABLE IF NOT EXISTS user (
    id BIGSERIAL UNIQUE PRIMARY KEY,
    name TEXT NOT NULL,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
)
INSERT INTO
    user(name, username, password)
VALUES
('Admin', 'admin', 'somepass');


CREATE TABLE IF NOT EXISTS todolist (
    id BIGSERIAL UNIQUE,
    title TEXT NOT NULL,
    description TEXT,
)
INSERT INTO
    user(name, username, password)
VALUES
('Admin', 'admin', 'somepass');

CREATE TABLE IF NOT EXISTS userlist (
    id BIGSERIAL UNIQUE,
    userid BIGINT,
    listid BIGINT,
    PRIMARY KEY(id),
    CONSTRAINT fk_userid
    FOREIGN KEY(userid)
    REFERENCES user(id)
);


CREATE TABLE IF NOT EXISTS todoitem (
    id BIGSERIAL UNIQUE,
    name TEXT NOT NULL,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
)
INSERT INTO
    user(name, username, password)
VALUES
('Admin', 'admin', 'somepass');


CREATE TABLE IF NOT EXISTS listsitem (
    id BIGSERIAL UNIQUE,
    name TEXT NOT NULL,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
)
INSERT INTO
    user(name, username, password)
VALUES
('Admin', 'admin', 'somepass');









