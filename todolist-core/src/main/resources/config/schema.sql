CREATE TABLE "user" (
  id int NOT NULL primary key,
  name varchar(32) DEFAULT NULL,
  email varchar(32) NOT NULL,
  password varchar(32) DEFAULT NULL
);


CREATE TABLE "todo" (
  id int NOT NULL primary key,
  userId int NOT NULL references "user"(id),
  title varchar(512) DEFAULT NULL,
  done boolean DEFAULT FALSE NOT NULL,
  priority int NOT NULL,
  dueDate date DEFAULT NULL
);

GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
