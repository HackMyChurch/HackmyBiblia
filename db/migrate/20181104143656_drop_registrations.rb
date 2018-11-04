class DropRegistrations < ActiveRecord::Migration[5.2]
  def up
    drop_table :registrations
  end

  def down
      def change
    create_table :registrations do |t|
      t.string :name

      t.timestamps
    end
  end
  end
end
