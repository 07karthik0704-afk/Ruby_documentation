Day 2 - Ruby on Rails Notes (13-01-2026)

1) Create Rails New Project (PostgreSQL)
To create a new Rails project with PostgreSQL database support:
rails new app -d postgresql
Meaning:
This creates a new Rails project using PostgreSQL as the database using the option:
• -d postgresql

2) database.yml Setup
File:
config/database.yml
Meaning:
This file contains the database connection settings.

3) Create Database
Command:
rails db:create
Meaning:
Creates the actual database in PostgreSQL.

4) Generate Scaffold (CRUD App)
Command example:
rails generate scaffold Customer name:string email:string
Meaning:
Rails automatically generates everything needed for CRUD:
• Create customer
• Read customer
• Update customer
• Delete customer
So it becomes a complete mini web app inside your Rails project.


5) Migrate Database
Command:
rails db:migrate
Meaning:
When you run scaffold, Rails only creates migration file (table create code).
But the real table is created only after running migrate.

Easy way to remember:
• Scaffold creates migration file
• Migrate creates the table in DB
• Only after migrate we can store values

6) Start Rails Server
Command:
rails server   OR   rails s
Run server on different port (if default port is busy):
rails s -p 4000
To stop server:
Ctrl + C

7) Check PostgreSQL Version
Command:
psql -V
Meaning:
Shows PostgreSQL version.
