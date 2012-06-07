class CreateGameEvents < ActiveRecord::Migration
  def change
    create_table :game_events do |t|
      t.integer :scenario
      t.string :title
      t.text :description
      t.string :picture
      t.string :buttons
      t.integer :task

      t.timestamps
    end
  end
end
