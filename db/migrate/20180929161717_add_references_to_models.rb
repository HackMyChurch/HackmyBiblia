class AddReferencesToModels < ActiveRecord::Migration[5.2]
  def change
    add_reference :registrations, :group, index: true, foreign_key: true
    add_reference :registrations, :user, index: true, foreign_key: true
    add_reference :conversations, :group, index: true, foreign_key: true
    add_reference :conversations, :chapter, index: true, foreign_key: true
    add_reference :messages, :conversation, index: true, foreign_key: true
    add_reference :messages, :user, index: true, foreign_key: true
  end
end
