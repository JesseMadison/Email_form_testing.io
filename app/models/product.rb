class Product < ApplicationRecord
  belongs_to :seller
  # mount_uploader :picture, PictureUploaderUploader
  has_many :attachments, dependent: :destroy
  # has_and_belongs_to_many :buyer_products
end
