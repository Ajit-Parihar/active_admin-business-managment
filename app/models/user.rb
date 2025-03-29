class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
         
         def timeout_in
          60.minutes  # User will be logged out after 30 minutes of inactivity
        end
         
        def admin?
          role == "admin"
        end

         has_many :seller_users
         has_many :sellers, through: :seller_users

end
