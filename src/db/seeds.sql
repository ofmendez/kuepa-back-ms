DROP TABLE IF EXISTS Users;

CREATE TABLE IF NOT EXISTS Users ( 
	UserId TEXT PRIMARY KEY, 
  UserName TEXT,
	Name TEXT,
	Pass TEXT,
	Salt TEXT,
	Role TEXT,
	State TEXT
);

CREATE TABLE IF NOT EXISTS Messages ( 
	MessageId INTEGER PRIMARY KEY AUTOINCREMENT,
  UserId TEXT,
  SenderName TEXT,
  Content TEXT,
  CreatedAt TEXT
);


INSERT INTO Users (UserId, UserName, Name, Pass, Salt, Role, State)
VALUES 
(
	'6d3cf4e7-197d-402e-9465-367a26af7c60',
  'kuepa1',
	'Tutor Fabian',
	'283f9b697c03cad4d806d67a3097fd9a275b8dcc86dd73ae6a72601d3c486fe74f5a9efcf1ad9ab45539030e737c84486bc17603a359d7c0d3b67c9bfe94e637',
	'0118050ce0b48be18c73d3d717466940',
	'Moderator',
	'Active'
);

INSERT INTO Users (UserId, UserName, Name, Pass, Salt, Role, State)
VALUES 
(
	'a9072c74-cfed-4079-84d1-f833df4eb21e',
  'kuepa2',
	'Jhon Doe',
	'91f80aeb64eac3302242958b4ee87884c9cac417833765dcaff75966b292ca84c8d69baf317194d63d23932c49a9858f6e44438c03412e7f0eeb67f9746ac27d',
	'cfb96d9bf0d52d458bfcd54ee000a90c',
	'Student',
	'Active'
);

INSERT INTO Users (UserId, UserName, Name, Pass, Salt, Role, State)
VALUES 
(
	'90b0e57b-e867-4140-8a5e-27833c375266',
  'kuepa3',
	'Jose Perez',
	'576c2e0662ea23f6cd6903ac9d2ccb4bc83eb06e2cd64e02b77c2a0a4a808c01da27ac58ab75613f601cd8a55271120782968618624c5b5f6fbfb4029ae095ff',
	'07e176cd810d87273e59a055ffaa0f53',
	'Student',
	'Active'
);
INSERT INTO Users (UserId, UserName, Name, Pass, Salt, Role, State)
VALUES 
(
	'5362b312-bc1b-4a12-aeee-6cdc63128546',
  'kuepa4',
	'Maria Gomez',
	'cc4eb63469d7884694dbe57273e96fee383c44151dd1cf88e807ff37415b63da0a7fee4c47153b44eb19afdfbcb62e6eac4162fe6a883713539a448bf9ab997c',
	'242ca69d6b6890571afa0d17ffa743bb',
	'Student',
	'Active'
);

