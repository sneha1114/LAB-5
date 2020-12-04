CREATE TABLE class (
id VARCHAR(4),
name CHAR(20)
);

INSERT INTO class VALUES
('e1','Anu'),
('e2','Rinu');

SELECT * FROM class;

SET autocommit=0;

START TRANSACTION;

INSERT INTO class VALUES
('e3','Liya');

SELECT * FROM class;

SAVEPOINT class1;

INSERT INTO class VALUES
('e4','Jinu');

SELECT * FROM class;

SAVEPOINT class2;

ROLLBACK TO class1;

SELECT * FROM  class;

COMMIT;