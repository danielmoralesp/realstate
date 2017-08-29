class Promoter < ApplicationRecord
  belongs_to :user

  validates :user_id, :phone, :address, :description, presence: true
  validates :phone, numericality: { only_integer: true }

  enum status: [ :inactive, :active ]

  before_create :set_default_promoter

  def set_default_promoter
    self.status = :inactive
  end

end
