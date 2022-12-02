class User < ApplicationRecord
  has_one :profil
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
