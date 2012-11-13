class CreatePhotoItems < ActiveRecord::Migration
  def change
    create_table :photo_items do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
