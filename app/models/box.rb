class Box < ApplicationRecord
  has_many :profiles, as: :profilable, dependent: :destroy

  # Use scopes from Profile model to identify roles
  has_many :coaches, -> { where(role: :coach) }, class_name: 'Profile', as: :profilable
  has_many :athletes, -> { where(role: :athlete) }, class_name: 'Profile', as: :profilable
  has_many :box_coaches, -> { where(role: :box_coach) }, class_name: 'Profile', as: :profilable
end
