USE [WebDB3]
GO
INSERT INTO dbo.Account([Username],[Name],[Email],[Password],[Phone],[Role])
		VALUES('admin', 'admin', 'admin@gmail.com', '123456', '1234567891', 1)

INSERT INTO dbo.Account([Username],[Name],[Email],[Password],[Phone],[Role])
		VALUES('ad', 'ad', 'ad@gmail.com', '123456', '1234567890', 1)

INSERT INTO dbo.Account([Username],[Name],[Email],[Password],[Phone],[Role])
		VALUES('user', 'user', 'user@gmail.com', '123456', '1234567892', 0)

INSERT INTO dbo.Account([Username],[Name],[Email],[Password],[Phone],[Role])
		VALUES('user1', 'user1', 'user1@gmail.com', '123456', '1234567893', 0)
