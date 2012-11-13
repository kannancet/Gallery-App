=begin
  This model holds the buisiness logic for the gallery entity. 
=end
class PhotoItem < ActiveRecord::Base
  attr_accessible :image, :title
  validates(:title, :presence => true, :length => {:maximum => 30})
  has_and_belongs_to_many :photo_galleries
end
