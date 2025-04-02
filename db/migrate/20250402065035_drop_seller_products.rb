class DropSellerProducts < ActiveRecord::Migration[7.2]
  def change
    drop_table :seller_products
  end
end
