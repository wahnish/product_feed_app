class Product < ActiveRecord::Base
  attr_accessible :blurb, :category, :description, :images, :options, 
  	:price, :qty, :shipping_weight, :size, :subcategory, :title, 
  	:weight, :image
  validates :blurb, :length => { :maximum  => 140}

# for creating a user w/products
belongs_to :user
# for images
mount_uploader :image, ImageUploader

end
