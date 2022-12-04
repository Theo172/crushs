class Subscription < ApplicationRecord
  validates_presence_of :name, :mail;
end
