class CreateSellerUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :seller_users do |t|
      t.references :seller, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
