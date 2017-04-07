class AddAttachmentImagePngToFondos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :fondos do |t|
      t.attachment :image_png
    end
  end

  def self.down
    remove_attachment :fondos, :image_png
  end
end
