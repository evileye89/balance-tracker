class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :category
      t.decimal :amount
      t.date :booked_at

      t.timestamps
    end
  end
end
