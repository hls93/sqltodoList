create database todoList;
create table todos (id integer, title varchar not null, details varchar, priority integer not null, created_at timestamp not null, completed_at timestamp);

INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('Laundry', 'wash and dry', 1, now(), 10/08),
       ('Dishes', 'wash and dry', 3, now())
       ('Vacuum', 'carpets and tile', 1, now(), 10/08)
       ('Make bed', 4, 10/09, now())
       ('Mop', 'kitchen', 1, now());

SELECT  *
FROM todos
WHERE completed_at IS null;

SELECT *
FROM todos
WHERE priority > 1;

UPDATE todos
SET  completed_at = timestamp now()
WHERE id = 2;

DELETE
FROM todos
WHERE completed_at IS not null;
