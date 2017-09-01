class City < ApplicationRecord
	has_many :promoters
	has_many :properties
end
