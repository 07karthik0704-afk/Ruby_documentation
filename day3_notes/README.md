Day 3-Rails Folder Structure & MVC Architecture
-----------------------------------------------

1-Introduction to MVC Architecture

Rails follows the MVC design pattern.
MVC stands for:
Model – View – Controller

It separates database logic, user interface, and request handling.
--------------------------------------------------------------------

2-Role of Each MVC Component

Model
Handles database operations
Contains business logic
Represents tables

View
Displays UI to users
Uses HTML and ERB

Controller
Handles requests
Communicates with model
Sends data to views
------------------------------------------------------------------------

3-MVC Request Flow

User sends request
Controller receives it
Controller calls Model
Model fetches data
Controller sends data to View
View shows response to user

Simple MVC Flow:
User -> Controller -> Model -> Controller -> View -> User
------------------------------------------------------------------------

4-Important Rails Features

Convention Over Configuration
Rails uses naming rules instead of manual setup.
Example:
rails generate scaffold Customer name:string email:string


Rails automatically assumes:

Model ->Customer (singular class name)
Controller -> CustomersController (plural)
Table -> customers (plural in DB)
Views folder -> views/customers/
Routes -> /customers
That automatic mapping = Convention Over Configuration

Syntactic Sugar
Rails provides short and simple commands to generate large amounts of code automatically (like scaffold).
This makes development faster and easier.
------------------------------------------------------------------------

5-Rails Project Folder Structure

When a Rails project is created, many folders are generated automatically.Each folder has a specific responsibility.

app/ (Main application code – MVC)
Contains:
models -> database logic & business rules
controllers -> handle requests and responses
views -> UI files (HTML + ERB)
helpers -> methods used in views

config/ (Application configuration)
Important files:
routes.rb -> maps URLs to controllers and actions
database.yml -> database connection settings
application.rb -> main app configuration
environment.rb -> app startup file

db/ (Database related files)
Contains:
migrate/ -> migration files (table structure changes)
schema.rb -> current database structure (auto-generated)
seeds.rb -> sample/default data

bin/
Contains Rails command scripts.

public/
Static files like:
images
error pages (404, 500)


log/
Stores application logs (used for debugging).

tmp/
Temporary files and cache.

test/
Testing files for the application.

vendor/
Third-party libraries and external code.

Important root files:
Gemfile -> list of gems (libraries)
Gemfile.lock -> exact installed versions
.gitignore -> files Git should ignore
README.md -> project documentation
Rakefile -> automation tasks
-------------------------------------------------------------------------

