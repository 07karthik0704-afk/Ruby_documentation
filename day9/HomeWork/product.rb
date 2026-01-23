class Product < ApplicationRecord

   validates :name, profanity: true
  validates :description, format: { with: /\A[a-zA-Z0-9\s.,]+\z/,
              message: "only allows letters, numbers, spaces, dots and commas"
            }

  validates :is_active, acceptance: { accept: true }

   validate :price_only_if_active

   
  def price_only_if_active
    if is_active == true && (price.nil? || price <= 0)
      errors.add(:price, "must be present and greater than 0 when product is active")
    end

    if is_active == false && price.present?
      errors.add(:price, "must be empty when product is inactive")
    end
  end
   validate :stock_only_if_active



  def stock_only_if_active
    if is_active == true && (stock.nil? || stock <= 0)
      errors.add(:stock, "must be present and greater than 0 when product is active")
    end
  end
end
