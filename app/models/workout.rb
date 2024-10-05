class Workout < ApplicationRecord
  belongs_to :training_plan
  has_many :sections, dependent: :destroy

  validates :name, presence: true
end
