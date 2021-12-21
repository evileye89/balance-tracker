class AddAccountAssociationToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :account_id, :integer
    add_foreign_key :bookings, :accounts
  end
end
