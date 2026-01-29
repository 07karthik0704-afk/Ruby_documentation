class Customer < ApplicationRecord

  has_rich_text:about_me
    validates :name, presence: true
    validates :email, uniqueness: true

    validate :block_bad_words

def block_bad_words
  if ProfanityFilter::Base.profane?(name)
    errors.add(:name, "contains profanity")
  end
end



end
