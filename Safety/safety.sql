USE [master]
GO
--Создание пользователей
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ Борис]    Script Date: 23.10.2024 14:19:26 ******/
CREATE LOGIN [Борис] WITH PASSWORD=N'Dfv6rZs1xODCekz1VsypaITl7G51w4o/prtuXgEUxK8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [ Борис] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ Борис]
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Александр]    Script Date: 23.10.2024 14:19:49 ******/
CREATE LOGIN [Александр] WITH PASSWORD=N'hogF1yLP0alua+4IWRgX3xVZQmoPPVLUbnBS1jOWIW0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Александр] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Александр]
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Алексей]    Script Date: 23.10.2024 14:20:13 ******/
CREATE LOGIN [Алексей] WITH PASSWORD=N'C+wzhTWlVhiBoB/7NPmvM+TUrlafk4kIRNe5Wd+FW1c=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Алексей] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Алексей]
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Марк]    Script Date: 23.10.2024 14:20:36 ******/
CREATE LOGIN [Марк] WITH PASSWORD=N'yTuSr/NC1WFpwYAe1Fgq0tTLwkcsdmzhuXPoOmoEJtA=', DEFAULT_DATABASE=[Barber Shop], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Марк] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Марк]
GO
ALTER SERVER ROLE [##MS_DatabaseConnector##] ADD MEMBER [Марк]
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Ольга]    Script Date: 23.10.2024 14:21:04 ******/
CREATE LOGIN [Ольга] WITH PASSWORD=N'VZuFcaWxzEHKtuvp1zg9IovNXcaevcB7ZFtbZ/cZoyw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Ольга] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Ольга]
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Ирина]    Script Date: 23.10.2024 14:21:21 ******/
CREATE LOGIN [Ирина] WITH PASSWORD=N'6u46iLwUDrbwSSz6s7M7CgYjhD7WQ6I6J69Maf74mlY=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Ирина] DISABLE
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [Ирина]

GO
--1. Показать список серверных ролей:
SELECT name
FROM sys.server_principals
WHERE type = 'R' AND is_fixed_role = 1;
GO
--2. Показать разрешения серверных ролей:
SELECT DP1.name AS DatabaseRoleName,   
   DP2.name AS DatabaseUserName,   
   DS.name AS SchemaName,  
   DP1.type_desc AS DatabaseRoleType,   
   DP1.default_schema_name AS DefaultSchema   
FROM sys.database_role_members AS DRM  
   RIGHT OUTER JOIN sys.database_principals AS DP1  
     ON DRM.role_principal_id = DP1.principal_id  
   LEFT OUTER JOIN sys.database_principals AS DP2  
     ON DRM.member_principal_id = DP2.principal_id  
   LEFT OUTER JOIN sys.schemas AS DS ON DS.schema_id = DP2.default_schema_name
WHERE DP1.type = 'R' AND DP1.is_fixed_role = 0  
ORDER BY DP1.name;
GO
--3. Показать членов серверной роли sysadmin:
EXEC sp_helpsrvrolemember 'sysadmin';
GO
--4. Показать членов серверной роли dbcreator:
GO
EXEC sp_helpsrvrolemember 'dbcreator';
GO
--5. Проверить является ли пользователь с логином Марк членом серверной роли sysadmin SQL server:
SELECT IS_SRVROLEMEMBER('sysadmin', 'Mark');
GO
--задание 3
USE [Продажи]
GRANT db_owner TO Марк
CREATE ROLE product_information
GRANT SELECT TO product_information
GRANT product_information TO Ирина
DENY INSERT TO Ирина
GRANT db_backupoperator TO Марат
GRANT db_datawriter TO Олег
GO