class Event < ActiveRecord::Base

  has_many :attendances
  
  has_many :students, :through => :attendances
  
  scope :eventdesc, -> {order(event_date: :desc)}
  
  EVENT_TYPE = ["LG", "SG", "Prayer", "Activity", "Conference"]

end
