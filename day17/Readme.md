# Rails Namespaced Model -- Step by Step Guide

## Step 1: Generate Namespaced Model

``` bash
rails generate model Product::Category name:string
```

This creates: - app/models/product/category.rb - migration for
product_categories table

Then run:

``` bash
rails db:migrate
```

------------------------------------------------------------------------

## Step 2: Add Column to Namespaced Model

``` bash
rails generate migration AddCategoryNameToProductCategories category_name:string
rails db:migrate
```

Adds a new column to the table.

------------------------------------------------------------------------

## Step 3: Insert Records

### Single record

``` ruby
Product::Category.create(category_name: "Electronics")
```

### Multiple records (fast)

``` ruby
Product::Category.insert_all([
  { category_name: "Phones" },
  { category_name: "Laptops" }
])
```

------------------------------------------------------------------------

## Step 4: Find Records

### Find by ID (throws error if missing)

``` ruby
Product::Category.find(1)
```

### Find by ID (returns nil if missing)

``` ruby
Product::Category.find_by(id: 1)
```

------------------------------------------------------------------------

## Step 5: Fetch by Order

``` ruby
Product::Category.first
Product::Category.second
Product::Category.third
Product::Category.fourth
Product::Category.fifth
Product::Category.last
```

# ActiveRecord Positional Fetch Methods

These methods return records based on their position in the table
(ordered by `id` by default).

------------------------------------------------------------------------

## Example Table: `product_categories`

  id   category_name
  ---- ---------------
  1    Phones
  2    Laptops
  3    TV
  4    Cameras
  5    Tablets
  6    Watches

------------------------------------------------------------------------

## Methods and What They Return

``` ruby
Product::Category.first
```

 Returns first record → Phones (id 1)

``` ruby
Product::Category.second
```

 Returns second record → Laptops (id 2)

``` ruby
Product::Category.third
```

➡ Returns third record → TV (id 3)

``` ruby
Product::Category.fourth
```

 Returns fourth record → Cameras (id 4)

``` ruby
Product::Category.fifth
```

 Returns fifth record → Tablets (id 5)

``` ruby
Product::Category.last
```

 Returns last record → Watches (highest id)

------------------------------------------------------------------------




