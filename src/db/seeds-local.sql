DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Messages;

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
	'a8e4aa11-9469-4151-a9f5-23addf4b789f',
  'kuepa1',
	'Tutor Fabian',
	'bf5c85a259f657b9431fa8617c95fd2977168b0a88d3fde624afc1c233a5b5117bc1bdf173242be4dc10fe72515c5df3105d04a7495583237dbc15dcf3c4b3fc',
	'6c72b78ebdc209a049dcfa082ecf298f',
	'Moderator',
	'Active'
);

INSERT INTO Users (UserId, UserName, Name, Pass, Salt, Role, State)
VALUES 
(
	'e0a740db-3b40-4197-b6de-5d0563a00ca9',
  'kuepa2',
	'Jhon Doe',
	'14b297107a0cca15245deb555358afddd7253964717203d4ee358939a9db644754ddec6b1666a75aadd29873e5384627b07ea076cae9a08c9328f08c317c15b0',
	'0973d18739b25c8f804c06f76a6de55c',
	'Student',
	'Active'
);

