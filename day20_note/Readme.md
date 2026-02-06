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

## Step 6 -- Associate product with tag

pro1 = Product.last 

pro1.tags \<\< Tag.last

Rails automatically inserts into join table.

------------------------------------------------------------------------

## Step 7 -- Add associations

### tag.rb

class Tag \< ApplicationRecord has_and_belongs_to_many :products end

### product.rb

class Product \< ApplicationRecord has_and_belongs_to_many :tags end

### Products_tags

class ProductsOffer /< ApplicationRecord

  belongs_to :product

  belongs_to :offer
 
end

------------------------------------------------------------------------

## Step 8 -- Fetch tag names

pro1.tags.pluck(:name)

or

pro1.tags.map(&:name)

------------------------------------------------------------------------

Use HABTM when: - Many to many relationship - No extra columns in join
table - No join model needed


