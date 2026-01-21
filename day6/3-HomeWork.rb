class Product < ApplicationRecord
    
    def self.expensive_products
    Product.all.limit(50).select { |p| p.price > 250 }
  end


  def self.fetch_active_products
  @price = Product.all.limit(10).pluck(:stock)
  end
end

# want to use in the products_controller
# def index
#     @products = Product.expensive_products
#   end

#-----------------------------------------------------
#Notes:

# 1-self.expensive_products

# *Gets first 50 products

# *Filters and returns only products whose price > 250

# *Returns full product objects (name, price, stock everything)

# 2-fetch_active_products

# *Gets first 10 products

# *pluck(:stock) collects only the stock column values

# *Returns only stock numbers in array

# 3-products_controller

# *Controller gets filtered products (price > 250)

# *Sends to view automatically