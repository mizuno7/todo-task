class Task < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true
  validates :name, length: {maximum: 30}

  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end


end
