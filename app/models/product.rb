class Product < ApplicationRecord
  has_many :transactions
  has_many :auctions
  belongs_to :user
end
