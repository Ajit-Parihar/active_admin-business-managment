class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :brand_name
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
