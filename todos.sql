create database todoList;
create table todos (id integer, title text not null, details text, priority integer not null, created_at integer not null, completed_at integer);

INSERT INTO todos (id, title, details, priority, created_at,completed_at)
VALUES (1, 'Laundry', 'wash and dry', 1, 10/07, 10/08),
       (2, 'Dishes', 'wash and dry', 3, 10/07)
       (3, 'Vacuum', 'carpets and tile', 1, 10/08, 10/08)
       (4, 'Make bed', 4, 10/09, 10/12)
       (5, 'Mop', 'kitchen', 1, 10/07);

SELECT  completed_at
FROM todos
WHERE completed_at = null;

SELECT priority
FROM todos
WHERE priority > 1;

UPDATE todos, 2
SET  completed_at = null
WHERE price = 10/08;

DELETE
FROM todos
WHERE completed_at = not null;
