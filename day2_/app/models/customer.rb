class Customer < ApplicationRecord
  def self.check_age
    customers = Customer.all

    for c in customers
  if c.age < 30
    puts "#{c.name} age is less than 30 (#{c.age})"
  end
end
  end
end
