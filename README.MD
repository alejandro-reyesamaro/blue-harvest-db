# Introduction

This document presents the main elements of the project Blue-HARVEST Coding assignment database.

## Technologies

The following tools are needed for this project:

| Techno     | Version          |
| ---------- | ---------------- |
| SQL Server | 16.0.1105        |

## Project setup 

### Data base

This projects use a SQL Server database for data persistance. We assume you have already installed the database server, and tools to run commands on it.

The folder **blue-harvest-db** contains a .NET Database project. If you have Visual Studio 2022 installed, you can open the project and publish the project into the new database. Otherwise, you can follow the steps in this section to create all needed components

**<ins>Database creation and security</ins>**

1- Create a blank database. Let's call it **harvest-db**.

2- All commands in the script **Database.Properties.Dev.NoBuild.sql** to configure the dabase user. 

3- To configure the API project to have access to the database, put the following values in the **application.propeties** of the project:

 ```bash
spring.datasource.url= <database connection string>
spring.datasource.username= <database username>
spring.datasource.password= <database user-password>
 ```

4- Run all script in the folders **Tables** and **Views** to create tables and views.
