class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

         has_many :products
         has_many :businesses
         has_many :orders

  def timeout_in
    1.hours # User will be logged out after 30 minutes of inactivity
  end

  def admin?
    role == "admin"
  end

end
