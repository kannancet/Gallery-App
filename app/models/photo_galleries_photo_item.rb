=begin
  This model holds the many to many rules for associating gallery and entity. 
=end
class PhotoGalleriesPhotoItem < ActiveRecord::Base
  attr_accessible :photo_gallery_id, :photo_item_id
  belongs_to :photo_item
  belongs_to :photo_gallery
end
