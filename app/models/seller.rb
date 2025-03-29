class Seller < ApplicationRecord
  belongs_to :business

  has_many :seller_users
  has_many :users, through: :seller_users

    def self.ransackable_attributes(auth_object = nil)
      ["business_id", "created_at", "id", "updated_at"]
    end

  def self.ransackable_associations(auth_object = nil)
    ["business", "seller_users", "users"]
  end

end
