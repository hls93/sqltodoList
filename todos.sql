create database todoList;
create table todos (id integer, title varchar not null, details varchar, priority integer not null, created_at timestamp not null, completed_at timestamp);

-- Write INSERT statements to insert five todos into this table, with one of them completed.
INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('Laundry', 'wash and dry', 1, 2017-07-10, 2017-08-10),
       ('Dishes', 'wash and dry', 3, 2017-08-27)
       ('Vacuum', 'carpets and tile', 1, now(), 2017-10-08)
       ('Make bed', 2, 2017-07-10)
       ('Mop', 'kitchen', 1, now());

-- Write a SELECT statement to find all incomplete todos.
SELECT  *
FROM todos
WHERE completed_at IS null;

--Write a SELECT statement to find all todos with a priority above 1.
SELECT *
FROM todos
WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up
UPDATE todos
SET  completed_at = timestamp now()
WHERE id = 2;

-- Write a DELETE statement to delete all completed todos
DELETE
FROM todos
WHERE completed_at IS not null;

-- =============================================================================
-- More complex toDo Statements
-- =============================================================================
-- insert into todos and create 20 new items
INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('mop yard', 'irraddicate ants', 2, now()),
       ('paint house', 'bright blue', 1, now(), 2017-10-09),
       ('eat lettuce', 'for health', 3, now(), 2017-09-29),
       ('throw away garbage', 'find roommate', 2, now()),
       ('inspect the beams', 'check for cracks', 3, now()),
       ('paint face', 'battle time', 2, now(), 2017-08-28),
       ('lick spoons', 'check for peanut butter', 1, now(), 2017-07-28),
       ('pet the dog', 'he is fluffy', 1, now()),
       ('eat all the icecream', 'why not', 2, now()),
       ('admire hair', 'so shiney', 3, now(), 2017-12-02),
       ('eat second lunch', 'all the tots', 2, now()),
       ('design a horticultural master piece', 'topiarys', 1, now(), 2017-11-07),
       ('build a house', 'build it outta solid iron', 2, now()),
       ('win the game of thrones', 'bye, cersei', 1, now()),
       ('eat a whole watermelon', 'because electrolytes are good', 2, now()),
       ('plant a tree', 'for oxygen', 3, now()),
       ('get a face tatoo', 'get it in the likeness of nicolas cage', 2, now(), 2017-8-24),
       ('write a musical', 'needs at least 10 dance numbers', 3, now(), 2017-10-10),
       ('jump on a trampoline', 'cardio', 1, now()),
       ('power wash the tub', 'get rid of all that stank grime on the grout', 2, now());

-- find all incomplete todos with priority 3.
SELECT *
FROM todos
WHERE completed_at IS NULL AND priority = 3;

-- find the number of incomplete todos by priority.
SELECT count(*)
FROM todos
WHERE completed_at IS NULL
GROUP BY priority

-- find the number of todos by priority created in the last 30 days
SELECT count(*)
FROM todos
WHERE created_at > (Current_date - interval '30 days')
GROUP BY priority;


-- find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT *
FROM todos
WHERE created_at = (select min(created_at)
FROM todos
WHERE priority = 1
AND completed_at = NULL);
