# Week 4 Notes

[Monday](#monday-2nd-december-2019) | [Tuesday](#tuesday-3rd-december-2019) | [Wednesday](#wednesday-4th-december-2019)

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

- **Manipulating table data**

  - Display all columns from the table "bookmarks": ```SELECT * FROM bookmarks;```
  
  - Add a row to the table (using automatic ID): ```INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');```
  
  - Limit the number of records to the top two: ```SELECT * FROM bookmarks LIMIT 2;```
  
  - Scope our query to specific rows of data: ```SELECT * FROM bookmarks WHERE url = 'http://www.makersacademy.com';```
  
  - Delete a row from a database table: ```DELETE FROM bookmarks WHERE url = 'http://www.twitter.com';```
  
  - Update a table row: ```UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://www.askjeeves.com';```
  
- **Interacting with PostgreSQL from Ruby**

  - Connecting to database: ```connection = PG.connect(dbname: 'bookmark_manager')```
  
  - Run the query on that connection: ```result = connection.exec('SELECT * FROM bookmarks')```
  
  - Map over the ```result``` variable to return the urls: ```result.map { |bookmark| bookmark['url'] }```
  
- **Connect TablePlus to your PostgreSQL database management system**

  - Type ```localhost``` as a server running 'backgrounded' on your local machine
  
  - Type your computer username
  
  - Name the database and connect
  
  - Execute SQL via the little 'Terminal' icon
  
  - Switch databases via the little 'database' icon
  
- ## Wednesday 4th December 2019

  It's normal to have multiple environments in applications. These might include:

    - A **development** environment that runs locally on your computer, so you can click around it and work on it.
    
    - A **production** environment that runs remotely on someone else's computer, so other people on the internet can click around it.
    
    - A **test** environment that runs locally on your computer whenever you run your tests. It comes into being especially for your tests, and disappears straight after your tests finish.
    
   There's also a **staging** environment, where your application runs remotely on someone else's computer, at a secret link so you can click around it to check it's all working right before you move it to production.
   
- **Set up a test database**

  For each environment, we will have our own database.

    - The **production** database will contain 'real' data. For instance: Facebook's production environment contains real-life users, posts, comments, likes, and so on.
    
    - The **test** database will contain no data. This way, we can set up whatever data we need right before we run our tests.
    
    - The **development** database will initially contain no data. If we run our application locally, we can add data to it.
    
- **Set up an Environment Variable to tell the application to use the test database when we run our tests**

  ```
  # in spec/spec_helper.rb

  ENV['ENVIRONMENT'] = 'test'
  ```

  ```
  # in lib/bookmark.rb

  if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'bookmark_manager_test')
  else
    connection = PG.connect(dbname: 'bookmark_manager')
  end
  ```
  
- **Set up the testing environment correctly**
  
  **Tests should always run against an empty database**. We should set up any required Test data in the test itself. Let's write a script that sets up and clears out the test database each run.

  We need to 'drop' the database between each run of the script. Let's use PostgreSQL's ```TRUNCATE``` command to do that:
  
  ```
  # in spec/setup_test_database.rb

  require 'pg'

  def setup_test_database
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("TRUNCATE bookmarks;")
  end
  ```
  
- **Integrate the script into our test runner, ```rspec```***    

  ```
  # in spec/spec_helper.rb

  require_relative './setup_test_database'

  ENV['ENVIRONMENT'] = 'test'

  RSpec.configure do |config|
    config.before(:each) do
      setup_test_database
    end
  end

  ### rest of the file ###
  ```
  
