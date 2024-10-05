class Profile < ApplicationRecord
  enum role: { coach: 0, athlete: 1, box_coach: 2 }

  belongs_to :user
  belongs_to :profilable, polymorphic: true

  has_many :assigned_training_plans, dependent: :destroy
  has_many :training_plans, through: :profile_plans

  before_save :update_display_name

  def update_display_name
    self.display_name = "#{user.first_name} #{user.last_name} (#{role})"
  end
end
