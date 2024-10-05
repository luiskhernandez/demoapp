class AssignedTrainingPlan < ApplicationRecord
  belongs_to :profile
  belongs_to :training_plan
end
