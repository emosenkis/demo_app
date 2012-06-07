class GameTask < ActiveRecord::Base
  attr_accessible :description, :manager, :scenario, :title
  belongs_to :scenario
  validates :description, :length => { :maximum => 1600 }
  validates :title, :length => { :maximum => 60 }
end
