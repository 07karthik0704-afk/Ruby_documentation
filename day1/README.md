Day-1 (Ruby & Rails Basics)
----------------------------

1-intro to ruby

Ruby is a dynamic, open-source programming language

Everything in Ruby is an object

Known for simplicity and productivity

StandAlone programing language

Current stable version: Ruby 3+
------------------------------------------------------

2-Introduction to Rails

Rails is a web framework built using Ruby

Follows MVC architecture

Uses convention over configuration

Helps build applications faster

Current major version: Rails 8+
-------------------------------------------------

3-Why Use Rails Framework

Rails provides:

Structured project layout

Automatic code generation

Built-in routing and database handling

Faster development process

----------------------------------------------------

4-Installing Ruby

Download from:
https://rubyinstaller.org/

Verify installation:
ruby -v

if we install ruby then automatically gem will install with the help of that we can install rails

------------------------------------------------------

5-Installing Rails

Install Rails using:
gem install rails


Verify:
rails -v

--------------------------------------------------------

6-Creating a Rails Project

syntax-> rails new app_name

--------------------------------------------------------

7-Running the Rails Server

rails server/rails s
need to go inside the folder in order to run

---------------------------------------------------------

8-Ruby Version Management

RVM
rbenv
Used for switching Ruby versions.

----------------------------------------------------------

important points : 

Ruby is the language. Rails is the framework that makes building web apps faster and organized.

Rails handles most setup automatically so we can focus on writing the logic instead of configuration.


-------------------------------------------------------------

#  Ruby on Rails Project Structure 

When we run:

rails new project_name

Rails automatically creates many folders and files.
Each has a specific role to keep the app organized.

---

#  SYSTEM & DEPLOYMENT FOLDERS

##  .github/
- Used for GitHub automation
- CI/CD workflows
- GitHub Actions

Not related to Rails logic.
Can ignore while learning.

---

##  .kamal/
- Used for deploying Rails app to server
- Helps run app in production (online)

Not needed while learning locally.

---

#  MAIN APPLICATION FOLDER

##  app/  (MOST IMPORTANT)

Contains all core Rails code.

### assets/
- CSS stylesheets
- images
- frontend assets

### controllers/
- Handles browser requests
- Controls app flow
- Connects models and views

Flow:
Browser → Controller → Model → Controller → View → Browser

### models/
- Database logic
- Validations
- CRUD operations
- Talks to database

### views/
- UI pages
- Written in `.html.erb`
- What user sees

### mailers/
- Sends emails
- welcome mail, reset password

### jobs/
- Runs heavy logic in background
- prevents app slowing

### javascript/
- Frontend JS logic
- dynamic UI, events

### helpers/
- Cleans and formats view code
- small reusable UI methods

---

#  COMMANDS

##  bin/
- Runs Rails commands
- Used internally by Rails

Examples:
bin/rails server  
bin/rails console  

---

#  SETTINGS & ROUTES

##  config/

Controls how the app runs.

### routes.rb
- Connects URL to controller

Example:
get "/customers", to: "customers#index"

### database.yml
- Connects Rails to database
- DB name
- username/password
- environments

Also contains:
- environment configs
- mailer settings
- timezone
- security rules

---

#  DATABASE

##  db/

- migrations (create/modify tables)
- schema.rb (final DB structure)

Used when creating models.

---

#  EXTRA CODE

##  lib/
- Custom Ruby code
- service classes
- reusable logic

Optional but useful.

---

#  LOGGING

##  log/
- error logs
- server activity
- debugging info

---

#  STATIC FILES

##  public/
- static pages
- images
- 404.html
- 500.html

Direct browser access.

---

#  FILE UPLOADS

##  storage/
- user uploaded files
- images, PDFs, documents
- used by Active Storage

---

#  TESTING

##  test/
- automated tests
- model tests
- controller tests

---

#  EXTERNAL STUFF

##  vendor/
- third-party libraries (manual)
- rarely used now

---

#  ROOT FILES

## .gitignore
- files Git should not track
- logs, temp, secrets

## Gemfile
- lists all gems (libraries)

## Gemfile.lock
- exact gem versions

## Rakefile
- background tasks

## config.ru
- starts Rails server

## Dockerfile
- runs app in container

## .ruby-version
- Ruby version for project

## README.md
- project documentation

---

#  QUICK MAP

app/      → main code  
config/   → settings + routes + database  
db/       → tables & migrations  
bin/      → commands  
public/   → static files  
storage/  → uploads  
log/      → errors  
test/     → testing  

---

#  MVC CORE

Model → data + database  
View → UI  
Controller → connects both  

---

 Focus as beginner:

app/  
config/  
db/
