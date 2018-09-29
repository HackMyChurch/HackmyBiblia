class Group < ApplicationRecord
  has_many :registrations, dependent: :destroy
  has_many :conversations, dependent: :destroy
end
