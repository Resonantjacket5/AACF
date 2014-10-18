class Event < ActiveRecord::Base

  has_many :attendances
  
  has_many :students, :through => :attendances
  
  EVENT_TYPE = ["LG", "SG", "Prayer", "Activity"]

end
