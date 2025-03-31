class AddUserToBusinesses < ActiveRecord::Migration[7.2]
  def change
    add_reference :businesses, :user, foreign_key: true
  end
end
