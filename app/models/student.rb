class Student < ActiveRecord::Base

  has_many :attendances
  
  has_many :events, :through => :attendances
  
      if Time.now.month >= 7
        senior = Time.now.year + 1
        junior = Time.now.year + 2
        sophomore = Time.now.year + 3
        freshman = Time.now.year + 4
      else
        senior = Time.now.year
        junior = Time.now.year + 1
        sophomore = Time.now.year + 2
        freshman = Time.now.year + 3
      end
      
  GRADUATION_YEAR = [senior, junior, sophomore, freshman, "0000"]


end
