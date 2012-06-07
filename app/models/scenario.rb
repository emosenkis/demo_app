class Scenario < ActiveRecord::Base
  attr_accessible :all_camera, :all_gps, :all_phone, :camera_per_team, :description, :gps_per_team, :phone_per_team, :picture, :title
  has_many :game_tasks
  has_many :game_events
  validates :title, :length => { :maximum => 60, :minimum => 6 }
  validates :description, :length => { :maximum => 1600, :minimum => 100 }
end
