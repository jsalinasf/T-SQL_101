USE employeedemo;
DROP TABLE IF EXISTS Facecards;
CREATE TABLE IF NOT EXISTS Facecards (
	cardvalue varchar(50)
);
INSERT INTO Facecards (cardvalue)
VALUES ('King');
INSERT INTO Facecards (cardvalue)
VALUES ('Queen');
INSERT INTO Facecards (cardvalue)
VALUES ('Jack');
INSERT INTO Facecards (cardvalue)
VALUES ('Ace');
DROP TABLE IF EXISTS Cardsuit;
CREATE TABLE IF NOT EXISTS Cardsuit (
	suit varchar(50)
);
INSERT INTO Cardsuit
VALUES('Heart');
INSERT INTO Cardsuit
VALUES('Spade');
INSERT INTO Cardsuit
VALUES('Clubs');
INSERT INTO Cardsuit
VALUES('Diamonds');

SELECT Facecards.cardvalue, CardSuit.suit
FROM Facecards CROSS JOIN CardSuit;

