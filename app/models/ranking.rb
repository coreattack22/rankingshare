class Ranking < ApplicationRecord
  has_many :answer
  validates :title, presence: true
  validates :element1, presence: true
  validates :element2, presence: true
end
