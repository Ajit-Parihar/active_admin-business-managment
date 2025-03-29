class AddBusinessToSellers < ActiveRecord::Migration[7.2]
  def change
    add_reference :sellers, :business, null: false, foreign_key: true
  end
end
