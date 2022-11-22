class Picture < ApplicationRecord
  belongs_to :profil

  validates :comment, presence: true
end
