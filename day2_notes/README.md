Day 2 – PostgreSQL, Scaffold & Rails Console
--------------------------------------------

1-Introduction to PostgreSQL in Rails
PostgreSQL is a powerful relational database commonly used with Rails in real-world projects.

Rails can be configured to use PostgreSQL while creating a new project.
---------------------------------------------

2-Creating a Rails Project with PostgreSQL

To create a Rails app using PostgreSQL:
->rails new project_name -d postgresql
The -d postgresql option sets PostgreSQL as the database.
----------------------------------------------

3-database.yml Configuration File

Location:
config/database.yml

This file contains:
database name
username
password
host
If any configuration is wrong, database creation will fail.

code:
default: &default
  adapter: postgresql
  encoding: unicode
  host: 127.0.0.1
  port: 5432
  username: postgres
  password: root
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
--------------------------------------------------------

4-Creating the Database
rails db:create
Creates the PostgreSQL database for the project.
---------------------------------------------------------

5-Understanding Scaffold

Scaffold is a Rails feature that automatically generates a complete CRUD structure.

It creates:

Model
Controller
Views
Routes
Migration file

CRUD = Create, Read, Update, Delete
-----------------------------------------------------------

6-Generating Scaffold

->rails generate scaffold Customer name:string email:string
-----------------------------------------------------------

7-Migrating the Database
rails db:migrate


Migration applies database changes and creates tables.

Important flow:

Scaffold → creates migration file
Migrate → creates actual table in database
-----------------------------------------------------------

8-Seeding Data
rails db:seed


Adds default/sample data into the database.

Correct order:

db:create → db:migrate → db:seed

(if we are inserting values into the seed then we need to use the above command)
----------------------------------------------------------

9-Running Rails Server

rails server
or
rails s


Different port:
rails s -p 4000


Stoping the server:
Ctrl + C
-----------------------------------------------------------