class Leader < ActiveRecord::Base

  
  validates :position, :name, :year, :major, :hometown, :email, :strange_fact, :interests, :leadership_position, presence: true
  
  
  
  
  
  YEARS=%w(Freshman Sophomore Junior Senior Super\ Senior Staff)

  LEADERSHIP_POSITION = ["Servant Team", "Small Group Leader", "Activity"]



end
