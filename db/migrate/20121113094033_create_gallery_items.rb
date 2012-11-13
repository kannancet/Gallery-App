class CreateGalleryItems < ActiveRecord::Migration
  def change
    create_table :gallery_items do |t|
      t.integer :photo_gallery_id
      t.integer :photo_item_id

      t.timestamps
    end
  end
end
