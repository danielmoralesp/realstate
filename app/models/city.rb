# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ApplicationRecord
	has_many :promoters
	has_many :properties
end
