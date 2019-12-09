# Week 4 Notes

[Monday](#monday-2nd-december-2019) | [Tuesday](#tuesday-3rd-december-2019) | [Wednesday](#wednesday-4th-december-2019) | [Thursday](#thursday-5th-december-2019) | [Friday](#friday-6th-december-2019)

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

## Tuesday 3rd December 2019

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
  
## Wednesday 4th December 2019

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
  
## Thursday 5th December 2019

- **Wrapping Database data in Program Objects**

  A normal connection between a database and an application mode works in this way:

    - Bring database data from database rows into your Ruby application.
    
    - Wrap that data in Ruby objects (models).
    
    - Ask a model to do things with the data it wraps.
    
    'Do things' could include: just expose the data directly (for instance, a Bookmark just exposes its url), or use it in some way (for instance, an Exam might have an average method which does some calculation with scores stored as columns in the database).
    
   For instance, let's imagine we're building a blog, which is a list of posts. The database for the blog has the following `posts` table:

  ```
  | id | title                         |
  |----|-------------------------------|
  | 1  | The team is the thing         |
  | 2  | Shovels make me sad           |
  | 3  | What is the 'simplest thing'? |
  ```

  Wrapping each row in a Ruby object allows me to access each post in my application as an instance of the `Post` class. Then, I can query each post: for instance, I could ask for `post.id`, `post.title`, or more complicated things like `post.word_count`.

  The `Post` class would, in this case, _wrap_ the data in each row of the table, and provide a thin layer of logic on top of that data (for instance, logic for calculating the `word_count`).

  This pattern of accessing data from a database and wrapping it is sometimes called the 'Object-Relational Map (ORM) Pattern'.
  
- **Add a column to a table**

  ```
  ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);
  ```
  
  Rather than save each step as a separate file, we could've updated the previous CREATE TABLE command to include this new line. However, by saving each step as a separate file, and asking the developer to run each step of the command, we are making sure that the database setup exactly matches our own process, and any errors in the setup process can be easily rolled back.
  
## Friday 6th December 2019

- [**Sinatra Restful Routes**](https://learn.co/lessons/sinatra-restful-routes-readme)

  A RESTful route is a route that provides mapping between HTTP verbs (get, post, put, delete, patch) to controller CRUD actions (create, read, update, delete). Instead of relying solely on the URL to indicate what site to visit, a RESTful route also depends on the HTTP verb and the URL.

  What this means is that when your application receives an HTTP request, it introspects on that request and identifies the HTTP method and URL, connects that with a corresponding controller action that has that method and URL, executes the code in that action, and determines which response gets sent back to the client. We don't need to worry about how the mechanics of the pattern matching occurs, just that it does happen.

  It's important to note that much of the CRUD actions are different actions that occur on the same resource. Let's take the example of an article with the ID 4. If we wanted to view the article, we would make a GET request to /articles/4. But what about when I want to update that article? Am I hitting a different resource? Nope! Just doing a different action to that same resource. So instead of a GET against /articles/4 we do a PUT. That's why separating what you're talking to (the resource/noun) from the action you're doing (the HTTP verb) is important! That's key to REST.
