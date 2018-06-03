class AddImageToPictures < ActiveRecord::Migration[5.2]
  def self.up
    add_attachment :pictures, :image
  end

  def self.down
    remove_attachment :pictures, :image
  end
end
