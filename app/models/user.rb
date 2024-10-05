class User < ApplicationRecord
  has_many :profiles

  def full_name
    "#{first_name} #{last_name}"
  end

  # Callback to update profile display_name when name changes
  after_update :update_profile_display_names, if: :saved_change_to_first_name_or_last_name?

  def update_profile_display_names
    profiles.each(&:save)
  end
end
