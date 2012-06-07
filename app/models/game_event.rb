class GameEvent < ActiveRecord::Base
  attr_accessible :buttons, :description, :picture, :scenario, :task, :title
  belongs_to :scenario
  validates :title, :length => { :maximum => 60, :minimum => 4 }
  validates :description, :length => { :maximum => 1600, :minimum => 120 }
end
