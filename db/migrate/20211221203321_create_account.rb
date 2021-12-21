class CreateAccount < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :iban

      t.timestamps
    end
  end
end
