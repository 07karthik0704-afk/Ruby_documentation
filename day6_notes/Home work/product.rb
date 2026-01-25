class Product < ApplicationRecord
    def self.expensive_products
        Product.all.select { |p| p.price > 250 }
    end
     def self.fetch_active_products
        @price = Product.all.limit(10).pluck(:stock)
    end
end


# 1. expensive_products method
# def self.expensive_products
#   Product.all.select { |p| p.price > 250 }
# end


# What happens:

# Product.all → gets all products

# select → filters them

# keeps only those with price > 250

# Returns: only expensive products.
# 

# 2-fetch_active_products method
# def self.fetch_active_products
#   Product.all.limit(10).pluck(:stock)
# end


# gets first 10 products

# pluck(:stock) → extracts only stock column

# returns array of stock numbers

# Example output:

# [10, 20, 5, 30, 7]



# 3- ProductsController
# def index
#   @products = Product.expensive_products
# end


# This means:

# Controller asks model:

# “Give me expensive products”

# Model returns filtered products.

# Controller sends them to view.

# View displays them.
