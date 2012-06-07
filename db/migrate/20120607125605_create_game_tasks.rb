class CreateGameTasks < ActiveRecord::Migration
  def change
    create_table :game_tasks do |t|
      t.integer :scenario
      t.string :title
      t.text :description
      t.string :manager

      t.timestamps
    end
  end
end
