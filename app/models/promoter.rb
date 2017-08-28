class Promoter < ApplicationRecord
  belongs_to :user

  enum status: [ :inactive, :active ]

  before_create :set_default_promoter

  def set_default_promoter
    self.status = :inactive
  end
end
