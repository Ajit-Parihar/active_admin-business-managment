class SellerUser < ApplicationRecord
  belongs_to :seller
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    ["seller_id", "user_id", "created_at", "id", "updated_at"]
  end

  # def self.ransackable_associations(auth_object = nil)
  #   ["seller","user"]
  # end
end
