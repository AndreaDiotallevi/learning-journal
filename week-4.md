# Week 4 Notes

[Monday](#monday-2nd-december-2019) | [Tuesday](#tuesday-3rd-december-2019)

By the end of the week all developers can:

- Build a simple web app with a database
- Follow an effective debugging process for database applications
- Explain the basics of how databases work (e.g. tables, SQL, basic relationships)

## Monday 2nd December 2019

- **Generate user stories from requirements**

  Turn "users got to log in" into "As a user, so that I can access my stuff, I want to log in".

  ```
  As a time-pressed user <Stakeholder>
  So that I can quickly go to web sites I regularly visit <Motivation>
  I would like to see a list of bookmarks <Task>
  ```

- **Furhter understanding of domain models**

  ![Domain Model](./img/domain_model.png)
  
- **Set up a Ruby web project**

  Take an empty directory. Get Sinatra up and running and showing "Hello World" when I visit localhost.
  
- **What is a database?**

  A database is simply organised part of a filesystem. It's optimised for storing and retrieving data.
  
- **Is Postgres a database?**

  A common database system for modern web development is called PostgreSQL. PostgreSQL is actually a server that runs a database. Therefore, it can be started, stopped, and interacted with through an interface, ```psql```.
  
- **Interact with PostgreSQL**

  - Use Homebrew to install the package: ```brew install postgresql```
  
  - Allow Homebrew to start and stop the Postgres service: ```brew services start postgresql```
  
  - Interact with the PostgreSQL database management system: ```psql postgres```
  
  - Create a database using SQL (Structured Query Language): ```CREATE DATABASE "bookmark_manager";```
  
  - List all database tables: ```\l```
  
  - Quit ```psql```: ```\q```

- **Create the first table using SQL**

  - Connect to database: ```\c bookmark_manager;```
  
  - Inspect the existing list of tables: ```\dt```
  
  - Create a table with 2 columns: ```CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));```
  
- **Document the database setup**

  It's a good idea to keep a record of how the database has been setup, both for your future reference and so that anyone contributing to your project knows how to setup the database.

  ```
    # in db/migrations/01_create_bookmarks_table.sql
  CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
  ```

  In addition, the README needs to be updated with instructions on how to use these:
    - Connect to ```psql```
    - Create the database using the ```psql``` command ```CREATE DATABASE bookmark_manager;```
    - Connect to the database using the ```pqsl``` command ```\c bookmark_manager;```
    - Run the query we have saved in the file ```01_create_bookmarks_table.sql```

- **Pairing with Jamie**

  The pairing session was a lot of fun. We were both very concentrated and laid back, and went on solving the challenges helping each other.

- ## Tuesday 3rd December 2019
