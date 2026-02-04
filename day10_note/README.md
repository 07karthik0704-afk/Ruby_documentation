Day-10 Rails Scopes + Controller + Routes
-----------------------------------------

1-Create Scope in Model (Product)

Create Scope in Model (Product)
->  scope :whitelisted_products, -> { where("stock <= ?", 25) }

What this does:

• Fetches products where stock is 25 or less
• ? prevents SQL injection
• 25 is the limit

Same as:

SELECT * FROM products WHERE stock <= 25;
-------------------------------------------

2-Use scope in Controller

Code:
def whitelisted_products
  @products = Product.whitelisted_products
end

 What happens:

• Controller calls model scope
• Gets filtered products
• Stores in @products
• Sends to view automatically
---------------------------------------------

3-Add Route for this custom page

products.rb:
class Product < ApplicationRecord
    scope :whitelisted_products, -> { where("stock <= ?", 25) }
end

contoller:
def whitelisted_products
  @products = Product.whitelisted_products
end

ruotes:
resources :products do
  collection do
    get 'whitelisted_products'
  end
end

html:
add an another page

and in the routes u only need to mention the products once 

Meaning:
Rails creates URL:
---------------------------------------------

Scopes filter data in models and are connected through controllers and routes to create custom pages
--------------------------------------------

