class AddCategoryToBusinesses < ActiveRecord::Migration[7.2]
  def change
    add_column :businesses, :category, :string
  end
end
