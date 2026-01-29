class AddRatingToCustomers < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :rating, :integer
  end
end
