class AddAttachmentImageJpgToFondos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :fondos do |t|
      t.attachment :image_jpg
    end
  end

  def self.down
    remove_attachment :fondos, :image_jpg
  end
end
