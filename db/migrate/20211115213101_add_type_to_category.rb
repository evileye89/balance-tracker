class AddTypeToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :type, :integer
  end
end
