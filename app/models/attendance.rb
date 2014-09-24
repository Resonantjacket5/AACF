class Attendance < ActiveRecord::Base
  belongs_to :student
  belongs_to :event
  
  validates :event_id, :uniqueness => { :scope => :student_id }
  
  
end
