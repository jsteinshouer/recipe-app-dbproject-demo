

# Demo CFML Application using cfmigrations

A simple demo application using [SQL Server DB Projects](https://learn.microsoft.com/en-us/sql/azure-data-studio/extensions/sql-database-project-extension?view=sql-server-ver16) in Azure Data Studio for database development.

### Database Setup

You can use an existing SQL Server if you have it or run one in Docker.

```
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=YourS3cureP@ss0rdH3re" -p 1433:1433 --name mssql -d mcr.microsoft.com/mssql/server:2019-latest
```

Then you can connect and create the database like this.

```
docker exec -it mssql bash

mssql@d653475c96de:/$ /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourS3cureP@ss0rdH3re
1> create database RecipeBox;
2> GO
```

You can use Azure Data Studio the the [DB Project extension](https://learn.microsoft.com/en-us/sql/azure-data-studio/extensions/sql-database-project-extension?view=sql-server-ver16). Here is a [DB Project Tutorial](https://github.com/microsoft/DacFx/blob/main/src/Microsoft.Build.Sql/docs/Tutorial.md) to help get started.