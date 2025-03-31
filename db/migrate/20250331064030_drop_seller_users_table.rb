class DropSellerUsersTable < ActiveRecord::Migration[7.2]
  
    def up
      drop_table :seller_users
    end
  
    def down
      create_table :seller_users do |t|
        t.integer :seller_id, null: false
        t.integer :user_id, null: false
        t.timestamps
      end
  
      add_index :seller_users, :seller_id
      add_index :seller_users, :user_id
      add_foreign_key :seller_users, :sellers
      add_foreign_key :seller_users, :users
    end
  end

