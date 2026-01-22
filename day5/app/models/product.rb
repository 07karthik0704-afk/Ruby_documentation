class Product < ApplicationRecord
#   validates :stock, numericality: true
#   validates :stock, numericality: { greater_than_or_equal_to: 10, less_than_or_equal_to: 20 }
#   validates :description, length: { maximum: 500 }

validates :price, numericality:{greater_than_or_equal_to:3}
validate :check_price

  def check_price
    if stock.to_i == 0 && price.to_f <= 0
      errors.add(:stock, "Stock is not available...")
    end
  end
end


