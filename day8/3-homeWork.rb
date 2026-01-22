class Customer < ApplicationRecord

  def check_age
    if age.nil?
      "Age is not present"
    elsif age.to_i > 0
      "Age is valid"
    else
      "Age must be greater than 0"
    end
  end

  # ✅ check name contains only alphabets
  def name_check
    if name.nil? || name.strip.empty?
      "Name is empty"
    elsif name.match?(/\A[a-zA-Z\s]+\z/)
      "Name is valid"
    else
      "Name must contain only alphabets"
    end
  end

end
