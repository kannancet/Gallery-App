class CreatePhotoGalleriesPhotoItems < ActiveRecord::Migration
  def change
    create_table :photo_galleries_photo_items do |t|
      t.integer :photo_gallery_id
      t.integer :photo_item_id

      t.timestamps
    end
  end
end
