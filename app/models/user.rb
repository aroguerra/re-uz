class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :buyer_users, class_name: "User", foreign_key: :buyer_user_id
  has_many :seller_users, class_name: "User", foreign_key: :seller_user_id

  has_many :auctions
  has_many :offers
  has_many :products
end
