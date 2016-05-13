class AddColumnStatusToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :status, :boolean
  end
end
