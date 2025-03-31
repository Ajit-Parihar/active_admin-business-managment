class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.datetime :order_time

      t.timestamps
    end
  end
end
