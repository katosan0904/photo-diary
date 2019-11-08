class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user ,optional: true
  has_many   :comments ,foreign_key: :post_id, dependent: :destroy
  belongs_to :category 
  accepts_nested_attributes_for :category
  
  validates_presence_of :user

end
