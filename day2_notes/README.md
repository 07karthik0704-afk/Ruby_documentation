# Day 2 --- Ruby on Rails Setup with PostgreSQL (Detailed Notes)

This day focused on creating a Rails application using PostgreSQL,
connecting it properly to the database, generating a scaffold, running
migrations, and starting the Rails server.

------------------------------------------------------------------------

## Step 1: Create Rails App with PostgreSQL

``` bash
rails new app-d postgresql
```

### Explanation:

This command: - Creates a new Rails project named `app-d` - Sets
PostgreSQL as the database instead of SQLite - Adds the `pg` gem to
Gemfile - Prepares PostgreSQL configuration in `config/database.yml`

Why PostgreSQL: - Used in real-world production apps - Handles large
data better - More secure and scalable

------------------------------------------------------------------------

## Step 2: Edit database.yml

File:

    config/database.yml

### Explanation:

Here we changed: - database name - username - password

Purpose: This connects Rails to your local PostgreSQL server.

Without this step: - Rails cannot talk to the database - Migrations and
data storage will fail

This file acts as a bridge between Rails and PostgreSQL.

------------------------------------------------------------------------

## Step 3: Create the Database

``` bash
rails db:create
```

### Explanation:

Rails reads database.yml and creates:

-   development database
-   test database

Behind the scenes, Rails runs SQL commands like:

CREATE DATABASE app_d\_development

Now the database exists and is ready for tables.

------------------------------------------------------------------------

## Step 4: Generate Scaffold

``` bash
rails g scaffold Student name:String age:integer
```

### Explanation:

This single command automatically creates:

-   Student model
-   Migration file for students table
-   Students controller
-   CRUD views (index, show, new, edit)
-   Routes

Result: A complete Create, Read, Update, Delete system for Student.

This saves a lot of manual coding.

------------------------------------------------------------------------

## Step 5: Run Migration

``` bash
rails db:migrate
```

### Explanation:

Rails reads migration files and:

-   Creates students table
-   Adds name and age columns
-   Updates schema.rb

Without migration: - Table does not exist - Data cannot be saved

------------------------------------------------------------------------

## Step 6: Start Rails Server

``` bash
rails s
```

Runs app at:

http://localhost:3000

### Custom port:

``` bash
rails s -p 5031
```

Runs at:

http://localhost:5031

------------------------------------------------------------------------

## Stop the Server

Press:

Ctrl + C

This safely shuts down Rails server.

------------------------------------------------------------------------

## Day 2 Workflow

rails new app-d postgresql\
edit database.yml\
rails db:create\
rails g scaffold\
rails db:migrate\
rails s

------------------------------------------------------------------------

## What I Learned

-   How to create Rails app with PostgreSQL
-   How Rails connects to database using database.yml
-   How scaffold auto-generates CRUD system
-   How migrations create tables
-   How to run Rails locally

This is the standard workflow for starting Rails applications.
