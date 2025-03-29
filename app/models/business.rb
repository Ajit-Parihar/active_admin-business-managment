class Business < ApplicationRecord
   has_many :sellers

   def self.ransackable_attributes(auth_object = nil)
    ["id", "category", "created_at", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["sellers"]
  end
  
end
