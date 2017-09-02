# == Schema Information
#
# Table name: properties
#
#  id                   :integer          not null, primary key
#  promoter_id          :integer
#  city_id              :integer
#  feature_id           :integer
#  rent_sale            :boolean
#  title                :text
#  price                :integer
#  bedrooms             :integer
#  bathrooms            :integer
#  area                 :float
#  location             :string
#  address              :string
#  description          :text
#  property_type        :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  photo_file_name      :string
#  photo_content_type   :string
#  photo_file_size      :integer
#  photo_updated_at     :datetime
#  photo_2_file_name    :string
#  photo_2_content_type :string
#  photo_2_file_size    :integer
#  photo_2_updated_at   :datetime
#  photo_3_file_name    :string
#  photo_3_content_type :string
#  photo_3_file_size    :integer
#  photo_3_updated_at   :datetime
#

class Property < ApplicationRecord
  has_many :requests

  belongs_to :promoter
  belongs_to :city
  belongs_to :feature

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>"}
  has_attached_file :photo_2, styles: { medium: "300x300>", thumb: "100x100>"}
  has_attached_file :photo_3, styles: { medium: "300x300>", thumb: "100x100>"}


  validates :promoter_id, :city_id, :feature_id, :title, :price, :bedrooms, :bathrooms, :area, :location, :address, presence: true
  validates_inclusion_of :rent_sale, :in => [true, false]

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :photo_2, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :photo_3, content_type: /\Aimage\/.*\Z/
end
