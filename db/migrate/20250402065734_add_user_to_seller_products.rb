class AddUserToSellerProducts < ActiveRecord::Migration[7.2]
  def change
    add_reference :seller_products, :user, null: false, foreign_key: true
  end
end
