class DropSellersTable < ActiveRecord::Migration[7.2]
  def up
    drop_table :sellers
  end

  def down
    create_table :sellers do |t|
      t.timestamps
      t.integer :business_id, null: false
      t.index :business_id
    end
  end
end
