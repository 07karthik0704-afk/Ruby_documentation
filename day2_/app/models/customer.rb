class Customer < ApplicationRecord
  def self.check_age
    Customer.where("age > ?", 30)
  end


end
