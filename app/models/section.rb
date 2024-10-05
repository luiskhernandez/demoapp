class Section < ApplicationRecord
  belongs_to :workout
  has_many :results, dependent: :destroy

  has_rich_text :content

  enum expected_result_type: { time: 0, weight: 1, repetitions: 2, distance: 3, observations: 4 }
  validates :name, presence: true
end
