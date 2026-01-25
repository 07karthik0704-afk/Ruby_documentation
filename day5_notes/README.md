Day 5 – Ruby Methods, Type Casting & Product Scaffold
-----------------------------------------------------

1- Ruby Methods

Ruby methods automatically return the last evaluated expression.
Using return is optional.

Example:

def add(a, b)
  a + b   # returned automatically
end
--------------------------------------------------------

2-Comments in Ruby

Single-line comment:
# This is a comment

Multi-line comment:
=begin
This is a multi-line comment
=end

Used to explain code and disable execution.
----------------------------------------------------------

3-User input

gets gets the input with the newline ("\n")
chomp removes that newline

Ruby does:
gets
# => "kar\n"

Then:
gets.chomp
# => "kar"

User input is always a String.

Ruby does not convert types automatically — we must convert manually.

Common conversions:
"10".to_i -> String to Integer
"10.5".to_f -> String to Float
10.to_s -> Integer to String

Used mainly with gets.chomp.
----------------------------------------------------------

4-Product Scaffold in Rails
rails db:create

rails generate scaffold Product name:string description:text price:decimal stock:integer is_active:boolean

generate scaffold = write the blueprint
db:migrate = build the actual table
------------------------------------------------------------

5-Ways to Insert Data into Database

--1.Using Rails UI forms
--2.Using SQL manually (DBeaver / pgAdmin)
--3.using seeds file
     --- 1. rb.seed
     step1:go to seed file
     step2:
    Product.create!(
    name: "Jana nayagan",
    description: "Not yet came due to the censor issue",
    price: 500,
    stock: 10,
    is_active: true)
    used to create the rows
     step3:in the terminal run the rails db:seed
--4.rails console
       we can do it in there by using the same comment
--5.faker
    1->go to the gemfile
    2->gem "faker"
    3->bundle install
    4->inside the seeds.rb

  10.times do
  Customer.create!(
    name: Faker::Name.name,
    email: Faker::Internet.unique.email
  )
  end
--------------------------------------------------

6-gem commands

gem list
Shows all installed gems.

gem list faker
Checks if Faker gem is installed.

gem info faker
Shows details about the Faker gem.

Gems can also be viewed on GitHub to read documentation and source code.
------------------------------------------------------------------------
