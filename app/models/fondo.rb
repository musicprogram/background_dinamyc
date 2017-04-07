class Fondo < ApplicationRecord
  has_attached_file :image_jpg, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image_jpg, content_type: /\Aimage\/.*\z/
  
  has_attached_file :image_png, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image_png, content_type: /\Aimage\/.*\z/
end
