class Subscription < ApplicationRecord
  validates_presence_of :name, :mail
  # validates :name, presence: true
  validates :mail, format: { with: URI::MailTo::EMAIL_REGEXP }
  devise :registerable, :recoverable, :rememberable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable,
  #        :confirmable, :trackable
end
