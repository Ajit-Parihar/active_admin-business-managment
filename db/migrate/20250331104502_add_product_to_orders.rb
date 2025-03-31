class AddProductToOrders < ActiveRecord::Migration[7.2]
  def change
    add_reference :orders, :product, null: false, foreign_key: true
  end
end
