class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, inclusion: { in: (0..5).to_a }, numericality: { only_integer: true }
  validates_presence_of :content
end
