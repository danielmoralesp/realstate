class Property < ApplicationRecord
  belongs_to :promoter
  belongs_to :city
  belongs_to :feature

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>"}
  has_attached_file :photo_2, styles: { medium: "300x300>", thumb: "100x100>"}
  has_attached_file :photo_3, styles: { medium: "300x300>", thumb: "100x100>"}

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :photo_2, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :photo_3, content_type: /\Aimage\/.*\Z/
end
