class Product < ApplicationRecord
  belongs_to :business
  belongs_to :user, optional: true

  has_many :orders
  has_many :seller_Products
  has_one_attached :image
end
