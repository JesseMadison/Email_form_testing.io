class User < ApplicationRecord

      has_one :profile
      has_one :seller
      has_and_belongs_to_many :buyer_products
      devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
