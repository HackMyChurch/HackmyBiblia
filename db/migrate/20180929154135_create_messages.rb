class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
