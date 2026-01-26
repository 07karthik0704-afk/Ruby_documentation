class Product < ApplicationRecord
    # def self.expensive_products
    #     Product.all.select { |p| p.price > 250 }
    # end
    #  def self.fetch_active_products
    #     @price = Product.all.limit(10).pluck(:stock)
    # end
    #------------------------------------
    validates :description, length: { minimum: 3, maximum: 50}
    validates :price, numericality: { greater_than_or_equal_to: 1 }
    validates :name, format: { with: /\A[a-zA-Z0-9 ]+\z/ }
    validates :stock, presence: true, if: :is_active?
    
    validate :deny_profanity

    def deny_profanity
        bad_words = ["idiot", "stupid", "nonsense", "fool", "lopper"]

        if bad_words.any? { |word| name.to_s.match?(/#{word}/i) }
            errors.add(:name, "contains inappropriate words")
        end
   end

   validate :check_stock_for_active

def check_stock_for_active
  if is_active? && stock.blank?
    errors.add(:stock, "must be present when product is active...")
  end
end

scope :out_of_stock, -> { where("stock <= ?", 25) }
scope :whitelisted_products, -> { where("stock <= ?", 25) }
end
