class Offer < ApplicationRecord
    has_many :Products ,through: :Products_offers 
end

