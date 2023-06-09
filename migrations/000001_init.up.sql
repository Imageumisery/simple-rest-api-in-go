CREATE TABLE users (
    id serial not null unique primary key,
    name varchar(255) not null,
    username varchar(255) not null unique,
    password_hash varchar(255) not null
);

CREATE TABLE todo_lists (
    id serial not null unique,
    title varchar(255) not null,
    description varchar(255)
);

CREATE TABLE users_lists(
    id serial not null unique,
    username varchar(255) not null unique,
    password_hash varchar(255) not null
);

CREATE TABLE todo_items (
    id serial not null unique,
    title varchar(255) not null,
    description varchar(255),
    done boolean not null default false
);

CREATE TABLE lists_items (
    id serial not null unique,
    item_id int REFERENCES todo_items on delete cascade not null,
    list_id int REFERENCES todo_lists on delete cascade not null
);