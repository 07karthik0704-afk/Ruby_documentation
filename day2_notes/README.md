# Day 2 --- Ruby on Rails Setup with PostgreSQL and Scaffold

This day covered creating a Rails project using PostgreSQL, configuring
the database, generating a scaffold, running migrations, and starting
the Rails server.

------------------------------------------------------------------------

## Step 1: Create Rails App with PostgreSQL

rails new app-d postgresql

### What this does:

-   Creates a new Rails project named `app-d`
-   Uses PostgreSQL instead of default SQLite
-   Adds PostgreSQL gem to Gemfile
-   Prepares database configuration in `config/database.yml`

------------------------------------------------------------------------

## Step 2: Configure Database Connection

File edited:

config/database.yml

### Purpose:

Connects Rails app to PostgreSQL using database name, username, and
password.

## code : 
default: &default
  adapter: postgresql
  encoding: unicode
  host: 127.0.0.1
  port: 5432
  username: postgres
  password: root
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

------------------------------------------------------------------------

## Step 3: Create the Database

rails db:create

Creates development and test databases.

------------------------------------------------------------------------

## Step 4: Generate Scaffold

rails g scaffold Student name:String age:integer

Creates: - Model - Migration - Controller - Views - Routes

------------------------------------------------------------------------

## Step 5: Run Migration

rails db:migrate

Creates students table in the database.

------------------------------------------------------------------------

## Step 6: Start Rails Server

rails s\
rails s -p 5031

------------------------------------------------------------------------

## Stop Server

Ctrl + C

------------------------------------------------------------------------

## Workflow Summary

rails new\
edit database.yml\
rails db:create\
rails g scaffold\
rails db:migrate\
rails s
