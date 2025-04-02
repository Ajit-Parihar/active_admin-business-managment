class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :seller, class_name: "User", foreign_key: "seller_id", optional: true
end
