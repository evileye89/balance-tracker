class AddCategoryAssociationToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :category_id, :integer
    add_foreign_key :bookings, :categories
  end
end
