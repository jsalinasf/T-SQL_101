-- User-Defined Table Types

CREATE TYPE StudentAges AS TABLE   
( 
    Age int  
); 


CREATE PROCEDURE SelectStudentsByAges
    @Ages StudentAges  READONLY
AS
BEGIN
    SELECT s.[Name], s.Major, s.Age
    FROM test.Student s
    JOIN @Ages a
    on s.Age = a.Age
END


DECLARE @Ages AS StudentAges;  

INSERT INTO @Ages
VALUES (32), (40), (58);
exec SelectStudentsByAges @Ages