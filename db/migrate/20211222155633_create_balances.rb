class CreateBalances < ActiveRecord::Migration[6.1]
  def change
    create_table :balances do |t|
      t.integer :year
      t.integer :month
      t.decimal :balance
    end
  end
end
