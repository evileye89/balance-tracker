class AddAccountAssociationToBalances < ActiveRecord::Migration[6.1]
  def change
    add_column :balances, :account_id, :integer
    add_foreign_key :balances, :accounts
  end
end
