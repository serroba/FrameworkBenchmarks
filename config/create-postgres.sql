CREATE USER benchmarkdbuser WITH PASSWORD 'benchmarkdbpass';

DROP DATABASE IF EXISTS hello_world;
CREATE DATABASE hello_world WITH ENCODING 'UTF8';

GRANT ALL PRIVILEGES ON DATABASE hello_world to benchmarkdbuser;


-- As we know, PostgreSQL is able to handle case sensitive naming if we write the name
-- of the columns or the name of the tables enclosed with "". This use to be a 
-- problem with the restrictions that the test was demanding before, when was 
-- expecting results in a case sensitive response:
-- {"id":3217,"randomNumber":2149}
-- To keep that, we have under both cases. Using the normal PostgreSQL convention
-- And support if someone need the "caseSensitive" option. But as far as the test
-- concern, we are not anymore restricted to return the result in the format given
-- before. Now an answer like: 
-- {"id":3217,"randomnumber":2149}
-- is valid as well.
-- For posible compatibilities we will keep this structure.

DROP TABLE IF EXISTS World;
CREATE TABLE  World (
  id integer NOT NULL,
  randomNumber integer NOT NULL default 0,
  PRIMARY KEY  (id)
);

INSERT INTO World (id, randomnumber)
SELECT x.id, random() * 10000 + 1 FROM generate_series(1,10000) as x(id);

DROP TABLE IF EXISTS Fortune;
CREATE TABLE Fortune (
  id integer NOT NULL,
  message varchar(2048) NOT NULL,
  PRIMARY KEY  (id)
);

INSERT INTO Fortune (id, message) VALUES (1, 'fortune: No such file or directory');
INSERT INTO Fortune (id, message) VALUES (2, 'A computer scientist is someone who fixes things that aren''t broken.');
INSERT INTO Fortune (id, message) VALUES (3, 'After enough decimal places, nobody gives a damn.');
INSERT INTO Fortune (id, message) VALUES (4, 'A bad random number generator: 1, 1, 1, 1, 1, 4.33e+67, 1, 1, 1');
INSERT INTO Fortune (id, message) VALUES (5, 'A computer program does what you tell it to do, not what you want it to do.');
INSERT INTO Fortune (id, message) VALUES (6, 'Emacs is a nice operating system, but I prefer UNIX. — Tom Christaensen');
INSERT INTO Fortune (id, message) VALUES (7, 'Any program that runs right is obsolete.');
INSERT INTO Fortune (id, message) VALUES (8, 'A list is only as strong as its weakest link. — Donald Knuth');
INSERT INTO Fortune (id, message) VALUES (9, 'Feature: A bug with seniority.');
INSERT INTO Fortune (id, message) VALUES (10, 'Computers make very fast, very accurate mistakes.');
INSERT INTO Fortune (id, message) VALUES (11, '<script>alert("This should not be displayed in a browser alert box.");</script>');
INSERT INTO Fortune (id, message) VALUES (12, 'フレームワークのベンチマーク');


DROP TABLE IF EXISTS "World";
CREATE TABLE  "World" (
  "id" integer NOT NULL,
  "randomNumber" integer NOT NULL default 0,
  PRIMARY KEY  (id)
);

INSERT INTO "World" ("id", "randomnumber")
SELECT x.id, random() * 10000 + 1 FROM generate_series(1,10000) as x(id);

DROP TABLE IF EXISTS "Fortune";
CREATE TABLE "Fortune" (
  "id" integer NOT NULL,
  "message" varchar(2048) NOT NULL,
  PRIMARY KEY  (id)
);

INSERT INTO "Fortune" ("id", "message") VALUES (1, 'fortune: No such file or directory');
INSERT INTO "Fortune" ("id", "message") VALUES (2, 'A computer scientist is someone who fixes things that aren''t broken.');
INSERT INTO "Fortune" ("id", "message") VALUES (3, 'After enough decimal places, nobody gives a damn.');
INSERT INTO "Fortune" ("id", "message") VALUES (4, 'A bad random number generator: 1, 1, 1, 1, 1, 4.33e+67, 1, 1, 1');
INSERT INTO "Fortune" ("id", "message") VALUES (5, 'A computer program does what you tell it to do, not what you want it to do.');
INSERT INTO "Fortune" ("id", "message") VALUES (6, 'Emacs is a nice operating system, but I prefer UNIX. — Tom Christaensen');
INSERT INTO "Fortune" ("id", "message") VALUES (7, 'Any program that runs right is obsolete.');
INSERT INTO "Fortune" ("id", "message") VALUES (8, 'A list is only as strong as its weakest link. — Donald Knuth');
INSERT INTO "Fortune" ("id", "message") VALUES (9, 'Feature: A bug with seniority.');
INSERT INTO "Fortune" ("id", "message") VALUES (10, 'Computers make very fast, very accurate mistakes.');
INSERT INTO "Fortune" ("id", "message") VALUES (11, '<script>alert("This should not be displayed in a browser alert box.");</script>');
INSERT INTO "Fortune" ("id", "message") VALUES (12, 'フレームワークのベンチマーク');
