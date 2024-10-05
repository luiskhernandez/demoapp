class TrainingPlan < ApplicationRecord
  enum plan_type: { strength: 0, mobility: 1, skills: 2 }

  belongs_to :author, -> { where(role: :coach) }, class_name: 'Profile'
  validates :author, presence: { message: 'must be a coach profile' }

  has_many :workouts, dependent: :destroy
  has_many :assigned_training_plans
end
