class AddAuthorNameToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :author_name, :string
    add_column :messages, :author_img, :string
    remove_reference :messages, :user, index: true, foreign_key: true
  end
end
