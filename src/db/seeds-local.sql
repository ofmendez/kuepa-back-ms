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

