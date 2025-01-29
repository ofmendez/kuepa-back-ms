DROP TABLE IF EXISTS Users;

CREATE TABLE IF NOT EXISTS Users ( 
	UserId TEXT PRIMARY KEY, 
	Name TEXT,
	Pass TEXT,
	Salt TEXT,
	Role TEXT,
	State TEXT
);


INSERT INTO Users (UserId, Name, Pass, Salt, Role, State)
VALUES 
(
	'fa241c23-083f-412a-96b0-38873397ad70',
	'The Administrator',
	'9d727e5ae5cdd72cda92963d4b9966082f50bfee9f2d3f7352d04fe712665ab6a2c84649d761d5d946d5d6013c2f09c82f6e8cc7295fcb4a15a92c24acad23bb',
	'6dd8b0ade1cf611c9957dac47389fb92',
	'Admin',
	'Active'
);

