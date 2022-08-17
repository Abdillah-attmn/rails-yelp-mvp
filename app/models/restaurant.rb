class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w[chinese italian japanese french belgian]
  validates_presence_of :name
  validates_presence_of :address
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
