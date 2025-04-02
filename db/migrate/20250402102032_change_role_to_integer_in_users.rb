class ChangeRoleToIntegerInUsers < ActiveRecord::Migration[7.2]
  def up
    # Add new integer column with default role 0 (user)
    add_column :users, :role_temp, :integer, default: 0, null: false

    # Convert existing string role values to integer
    User.reset_column_information
    User.find_each do |user|
      case user.role
      when "user" then user.update_columns(role_temp: 0)
      when "seller" then user.update_columns(role_temp: 1)
      when "admin" then user.update_columns(role_temp: 2)
      when "superAdmin" then user.update_columns(role_temp: 3)
      else user.update_columns(role_temp: 0)  # Default to user if unknown
      end
    end

    # Remove old string column and rename new integer column
    remove_column :users, :role
    rename_column :users, :role_temp, :role
  end
end
