class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.boolean :all_gps
      t.boolean :gps_per_team
      t.boolean :all_camera
      t.boolean :camera_per_team
      t.boolean :all_phone
      t.boolean :phone_per_team

      t.timestamps
    end
  end
end
