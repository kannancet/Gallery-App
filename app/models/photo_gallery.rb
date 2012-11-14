=begin
  This model holds the buisiness logic for the gallery entity. 
=end
class PhotoGallery < ActiveRecord::Base
  attr_accessible :description, :title, :photo_items_attributes 
  validates(:title, :presence => true, :length => {:maximum => 30})
  has_many :photo_galleries_photo_items, :dependent => :destroy
  has_many :photo_items, :through => :photo_galleries_photo_items
  accepts_nested_attributes_for :photo_items, :reject_if => lambda { |item| item[:title].blank? }
end
