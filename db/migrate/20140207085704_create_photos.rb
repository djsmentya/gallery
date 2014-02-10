class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :title
      t.integer :album_id

      t.timestamps
    end

    add_attachment :photos, :image
  end
  def self.down
    drop_table :photos
  end
end