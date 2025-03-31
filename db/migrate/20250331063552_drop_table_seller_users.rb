class DropTableSellerUsers < ActiveRecord::Migration[7.2]
  def change
    def up
      drop_table :seller_users
    end


  def down
    create_table :seller_users do |t|
       t.integer :seller_id
       t.integer :user_id
    end
  end
  end
end
