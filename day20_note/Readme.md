# Rails HABTM (Many-to-Many) Association 

This helps us  to connect Products and Tags using
has_and_belongs_to_many.

------------------------------------------------------------------------

## Step 1 -- Create Tag model

rails g model Tag name:string desc:string

------------------------------------------------------------------------

## Step 2 -- Run migration

rails db:migrate

------------------------------------------------------------------------

## Step 3 -- Create join table

rails generate migration CreateJoinTableProductsTags products tags

This creates: products_tags (with product_id and tag_id)

------------------------------------------------------------------------

## Step 4 -- Run migration again

rails db:migrate

------------------------------------------------------------------------

## Step 5 -- Insert Tag records (Rails console)

rails c

Tag.create(name: "Electronics", desc: "Electronic items")


------------------------------------------------------------------------

## Step 6 -- Adding tag to product ------------- if want we can also add product to tages(it is bidirectional)

pro1 = Product.last 

pro1.tags \<\< Tag.last

Rails automatically inserts into join table.

or

 tag1=Tags.first

 tag1.products \<\<Product.second

------------------------------------------------------------------------

## Step 7 -- Add associations

### tag.rb
```ruby
class Tag < ApplicationRecord
  has_and_belongs_to_many :products
end
```
### product.rb

```ruby
class Product < ApplicationRecord 
has_and_belongs_to_many :tags
end
```

### Products_tags

```ruby
class ProductsOffer < ApplicationRecord

  belongs_to :product

  belongs_to :offer
 
end

```
------------------------------------------------------------------------

## Step 8 -- Fetch tag names for a Product

```ruby
pro1 = Product.last

pro1.tags.pluck(:name)

or

pro1.tags.map(&:name)

```

pro1.tags.map { |tag| tag.name } 
pro1.tags.map(&:name)

both are same

------------------------------------------------------------------------

Use HABTM when: - Many to many relationship - No extra columns in join
table - No join model needed

---------------------------------------------------------------------------


# Rails has_many :through Association 

This  shows how to connect Products and Offers using a join model
(has_many :through).

------------------------------------------------------------------------

## Step 1 -- Create Offer model

rails g model Offer name:string status:boolean discount:integer

------------------------------------------------------------------------

## Step 2 -- Run migration

rails db:migrate

------------------------------------------------------------------------

## Step 3 -- Create join model

rails generate model ProductsOffer product:references offer:references

------------------------------------------------------------------------

## Step 4 -- Run migration again

rails db:migrate

------------------------------------------------------------------------

## Step 5 -- Add associations

### offer.rb

```ruby
class Offer < ApplicationRecord 
has_many :products_offers 
has_many :products, through: :products_offers
end
```
------------------------------------------------------------------------

### product.rb

```ruby
class Product < ApplicationRecord 
has_many :products_offers 
has_many:offers, through: :products_offers 
end
```

------------------------------------------------------------------------

### products_offer.rb

```ruby
class ProductsOffer \< ApplicationRecord 
belongs_to :product 
belongs_to:offer 
end
````
------------------------------------------------------------------------

## Step 6 -- Use in Rails console (Full cconept will teach in monday)

rails c

offer = Offer.create(name: "Summer Sale", status: true, discount: 20)

product = Product.last

product.offers \<\< offer

------------------------------------------------------------------------

## Fetch data

product.offers.pluck(:name) 

offer.products

------------------------------------------------------------------------

# Summary

Use has_many :through when:

-   Many to many relationship
-   Join table needs its own model
-   You may store extra fields later (price, dates, status, etc.)

More flexible than HABTM.

-----------------------------------------------------------------------------

# Rails `dependent: :destroy` 

 what happens when you use `dependent: :destroy` in Rails associations.

------------------------------------------------------------------------

## Example Models

### user.rb

``` ruby
class User < ApplicationRecord
  has_one :vendor, dependent: :destroy
end
```

### vendor.rb

``` ruby
class Vendor < ApplicationRecord
  belongs_to :user
end
```

------------------------------------------------------------------------

## What This Relationship Means

-   One User has one Vendor
-   Vendor belongs to User
-   When User is deleted, Vendor should also be deleted

------------------------------------------------------------------------

## Using in Rails Console

``` ruby
u1 = User.find(7)
u1.destroy
```

------------------------------------------------------------------------

## What Rails Does Behind the Scenes

1.  Finds the associated vendor\
2.  Calls `vendor.destroy`\
3.  Then calls `user.destroy`

Result:

-   Vendor row deleted\
-   User row deleted

------------------------------------------------------------------------

## Why Use `dependent: :destroy`

-   Prevents orphan records\
-   Runs callbacks\
-   Keeps data consistent

------------------------------------------------------------------------



## Best Use Cases

User → Profile\
Post → Comments\

in the insta we need to delete the user it will be useful
or the comments

------------------------------------------------------------------------

## Summary

`dependent: :destroy` automatically deletes related records safely.



