/*
-------------------------------------------------------------------------------------
--------------------------- Account Initialisation ----------------------------------
-------------------------------------------------------------------------------------
*/

--On [master]
CREATE LOGIN harvestlogin WITH PASSWORD = 'set-a-password-here';

-- On [db]
---- Add web app role (read / write / exec on dbo)
CREATE ROLE [harvestrole] AUTHORIZATION [dbo];
GRANT SELECT ON SCHEMA::dbo TO [harvestrole];
GRANT INSERT ON SCHEMA::dbo TO [harvestrole];
GRANT UPDATE ON SCHEMA::dbo TO [harvestrole];
GRANT DELETE ON SCHEMA::dbo TO [harvestrole];
GRANT EXECUTE ON SCHEMA::dbo TO [harvestrole];

---- Create user
CREATE USER harvestuser FROM LOGIN harvestlogin;

---- Add user to role
ALTER ROLE [harvestrole] ADD MEMBER harvestuser;
