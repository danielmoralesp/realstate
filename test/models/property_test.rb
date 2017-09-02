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

require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
