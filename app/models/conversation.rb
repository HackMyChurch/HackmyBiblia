class Conversation < ApplicationRecord
  belongs_to :group
  belongs_to :chapter
  has_many :messages, dependent: :destroy
end
