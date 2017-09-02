class Request < ApplicationRecord
  belongs_to :user
  belongs_to :promoter
  belongs_to :property


end
