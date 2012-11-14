=begin
  This model holds the buisiness logic for the gallery entity. 
=end
class PhotoItem < ActiveRecord::Base
  attr_accessible :image, :title
  validates(:title, :presence => true, :uniqueness => true, :length => {:maximum => 30})
  has_many :photo_galleries_photo_items, :dependent => :destroy
  has_many :photo_galleries, :through => :photo_galleries_photo_items
end
