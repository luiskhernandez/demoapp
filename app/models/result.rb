class Result < ApplicationRecord
  belongs_to :section
  belongs_to :athlete, -> { where(role: :athlete) }, class_name: 'Profile'

  validates :result_value, presence: true
end
