Day 9 - RAILS MODEL VALIDATIONS & BUSINESS LOGIC
-------------------------------------------------

1-Customer Model – Explained

class Customer < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: true
end

->validates :name, presence: true

Customer MUST have a name
Empty values are rejected

->validates :email, uniqueness: true

No two customers can share same email
------------------------------------------------

2-Product Model – Explained

class Product < ApplicationRecord
  validates :description, length: { minimum: 3, maximum: 20 }
  validates :price, numericality: { greater_than_or_equal_to: 1 }
  validates :name, format: { with: /\A[a-zA-Z0-9 ]+\z/ }
  validates :stock, presence: true, if: :is_active?
end

->validates :description, length: { minimum: 3, maximum: 20 }

Must be at least 3 characters
Cannot exceed 20 characters

->validates :price, numericality: { greater_than_or_equal_to: 1 }

Must be a number
Must be 1 or more

->validates :name, format: { with: /\A[a-zA-Z0-9 ]+\z/ }

Allow only:
letters
numbers
spaces

->validates :stock, presence: true, if: :is_active?

Check stock only when product is active

If product inactive:
stock can be empty.

If product active:
stock MUST be present.

This is real business logic.
------------------------------------------------------------

3-Profanity Filter using Custom Validation

->validate :deny_profanity

def deny_profanity
  bad_words = ["idiot", "stupid", "nonsense", "fool", "lopper"]

  if bad_words.any? { |word| name.to_s.match?(/#{word}/i) }
    errors.add(:name, "contains inappropriate words")
  end
end

if the words are present then it will show the message as inapprorate message
-------------------------------------------------------------

4-Profanity Validation Using Gem

->validate :block_bad_words

def block_bad_words
  if ProfanityFilter::Base.profane?(name)
    errors.add(:name, "contains profanity")
  end
end

Using a profanity gem allows automatic detection of offensive words with minimal code.
------------------------------------------------------------------------

5-Custom Validation – Stock Dependency Logic

->validate :check_stock_for_active

def check_stock_for_active
  if is_active? && stock.blank?
    errors.add(:stock, "must be present when product is active")
  end
end

we can also able to give the custom validation
------------------------------------------------------------------------

validates-inbuild
validate-custom
-----------------------------------------------------------------------



