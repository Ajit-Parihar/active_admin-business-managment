

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

  has_many :products
  has_many :businesses
  has_many :orders

  enum role: { user: 0, seller: 1, admin: 2, superadmin: 3 }

  def timeout_in
    1.hours
  end

  def admin?
    role == "admin"
  end
  
end
