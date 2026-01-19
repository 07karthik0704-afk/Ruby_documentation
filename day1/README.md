Day 1 - Ruby on Rails Notes (12-01-2026)

1) Create a Complete Rails Application
To create a new Rails project:
rails new my_first_app

Meaning:

This command creates a full Rails project automatically with:
• Folder structure
• Configuration files
• Gems (libraries)
• MVC Structure (Model, View, Controller)
Rails = Framework
Ruby = Programming language

2) Install Ruby
To install Ruby, use this official site:
https://rubyinstaller.org
Note:
• Ruby is the language
• Rails is a framework built using Ruby


3) Verify Ruby Installation
After installation, check Ruby and Gems version using:
ruby -v  → Shows Ruby version (proof Ruby installed)
gem -v   → Shows RubyGems version
RubyGems:
• RubyGems is Ruby’s package manager
• It helps us install libraries/packages called gems


Ruby on Rails
What is Ruby on Rails?
Ruby on Rails is a web development framework written in the Ruby programming language.
It is mainly used to build websites and web applications quickly and easily.
Rails provides a ready-made structure and built-in tools for common web use cases like:
• Creating pages
• Connecting to databases
• Handling user login
• Storing and retrieving data (CRUD)


Why Rails is Popular?
Rails is popular because it follows:
1) Convention over Configuration
• Less setup
• More coding
• Developers don’t need to write too many configuration files
2) DRY (Don't Repeat Yourself)
• Avoid writing the same code again and again
So Rails helps in:
• Faster development
• Cleaner code
• Easy maintenance


Gems

What is a Gem?
A Gem is a Ruby library/package.
It helps us add extra features in Ruby on Rails without writing everything from scratch.
Example of Using Gem
Instead of building login/signup manually, we can use a gem like:
Devise Gem:
Devise → Authentication (Login / Signup)

Why do we use Gems?
• Saves time
• Reduces code
• Adds powerful features easily
• Gems are tested and widely used

Framework vs Library
Framework:
• It has the format/guidelines to follow.
Library:
• It has predefined methods and already written code.

Installation Flow
Step 1: Install Ruby
First, install Ruby language.
Step 2: Ruby comes with RubyGems
When you install Ruby, RubyGems usually comes automatically.
Step 3: Install Rails using gem
Rails itself is a gem:
gem install rails
Rails is a framework that we install using gem.

Running the rails : 
1-go to the specific folder and then run the command [rails s]