class Example < ActiveRecord::Base
  attr_accessible :title, :url, :description, :image, :remove_image
  mount_uploader :image, ImageUploader
  validates :title, :presence => true
  validates :url, :url => true
end
