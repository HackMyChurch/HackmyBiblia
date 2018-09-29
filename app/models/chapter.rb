class Chapter < ApplicationRecord
  has_many :conversations, dependent: :destroy

end
