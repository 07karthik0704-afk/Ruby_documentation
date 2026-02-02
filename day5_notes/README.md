# Day 5 -- Ruby Methods, Type Casting & Product Scaffold

------------------------------------------------------------------------

## 1. Ruby Methods

Ruby methods automatically return the last evaluated expression.\
Using `return` is optional.

### Example:

``` ruby
def add(a, b)
  a + b   # returned automatically
end
```

------------------------------------------------------------------------

## 2. Comments in Ruby

### Single-line comment:

``` ruby
# This is a comment
```

### Multi-line comment:

``` ruby
=begin
This is a multi-line comment
=end
```

### Purpose:

-   Explain code\
-   Temporarily disable execution

------------------------------------------------------------------------

## 3. User Input in Ruby

`gets` takes input including newline (`\n`)\
`chomp` removes the newline

### Example:

``` ruby
gets
# => "kar\n"

gets.chomp
# => "kar"
```

### Important:

User input is always a **String**.

Ruby does NOT convert automatically --- manual conversion is required.

### Common conversions:

``` ruby
"10".to_i    # String to Integer
"10.5".to_f  # String to Float
10.to_s     # Integer to String
```

Mostly used with:

``` ruby
gets.chomp
```

------------------------------------------------------------------------

## 4. Product Scaffold in Rails

``` bash
rails db:create

rails generate scaffold Product name:string description:text price:decimal stock:integer is_active:boolean
```

### Meaning:

-   `generate scaffold` → creates blueprint (model, controller, views,
    migration)
-   `db:migrate` → builds the actual database table

------------------------------------------------------------------------

## 5. Ways to Insert Data into Database

### 1. Using Rails UI forms

### 2. Using SQL manually

(DBeaver / pgAdmin)

### 3. Using seeds file

File:

``` ruby
db/seeds.rb
```

Example:

``` ruby
Product.create!(
  name: "Jana nayagan",
  description: "Not yet came due to the censor issue",
  price: 500,
  stock: 10,
  is_active: true
)
```

Run:

``` bash
rails db:seed
```

------------------------------------------------------------------------

### 4. Using Rails console

Same `create!` commands can be run inside:

``` bash
rails console
```

------------------------------------------------------------------------

### 5. Using Faker gem

#### Steps:

1.  Open Gemfile\
2.  Add:

``` ruby
gem "faker"
```

3.  Run:

``` bash
bundle install
```

4.  Inside `seeds.rb`:

``` ruby
10.times do
  Customer.create!(
    name: Faker::Name.name,
    email: Faker::Internet.unique.email
  )
end
```

------------------------------------------------------------------------

## 6. Gem Commands

``` bash
gem list
```

Shows all installed gems.

``` bash
gem list faker
```

Checks if Faker is installed.

``` bash
gem info faker
```

Shows gem details.

------------------------------------------------------------------------

## Notes

-   Gems can be explored on GitHub for documentation and source code\
-   Scaffold speeds up CRUD development\
-   Faker is used for generating fake test data

------------------------------------------------------------------------
