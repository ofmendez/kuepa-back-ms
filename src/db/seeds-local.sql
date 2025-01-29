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
	'6804c9a1-4ea5-4592-82de-bed420112f3d',
	'The Administrator',
	'c90d6431f845817ca77686b9a90e15aaa8af599f66d830199b6c885f9117511b8a8e9660b007eb448b2a5fa332d09ddfc53c2b33203286277764dca08abdac01',
	'8bf4cc496bfceed98c201e24c8bd8807',
	'Admin',
	'Active'
);

