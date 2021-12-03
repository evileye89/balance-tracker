class RenameCategoryTypeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :categories, :type, :cost_type
  end
end
