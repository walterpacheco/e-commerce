class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  has_many_attached :images
end
