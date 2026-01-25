class Customer < ApplicationRecord
    validates :name, presence: true
    validates :email, uniqueness: true

    validate :block_bad_words

def block_bad_words
  if ProfanityFilter::Base.profane?(name)
    errors.add(:name, "contains profanity")
  end
end



end
