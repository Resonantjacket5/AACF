class Leader < ActiveRecord::Base

  
  validates :position, :name, :year, presence: true
  
  
  
  
  
  YEARS=%w(Freshman Sophomore Junior Senior Super\ Senior Staff Graduated)

  LEADERSHIP_POSITION = ["Servant Team", "Small Group Leader", "Activity", "Inactive"]



end
