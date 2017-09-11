class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, numericality: {only_integer: true}, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5, :message => " must be between 1 - 5"}
  validates :body, presence: true

end
