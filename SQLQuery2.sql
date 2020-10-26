DROP TABLE IF EXISTS ShipNations
CREATE TABLE ShipNations
(
	ShipNation VARCHAR(60),
	NationAbbrev VARCHAR(5)
)

INSERT INTO ShipNations
VALUES
('United States', 'USA'),('Japan', 'IJN'),('Germany', 'KM'),('Russia','RUS'),('United Kingdom','RN')

DROP TABLE IF EXISTS ShipClasses
CREATE TABLE ShipClasses
(
	ShipClass VARCHAR(60),
	Abbreviation VARCHAR(4)
)

INSERT INTO ShipClasses
VALUES
('Aircraft Carrier', 'CV'),( 'Battleship', 'BB'),('Heavy Cruiser', 'CA'),('Light Cruiser', 'CL'),('Destroyer', 'DD')

SELECT * FROM ShipClasses
SELECT * FROM ShipNations