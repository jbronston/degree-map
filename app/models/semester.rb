class Semester < ActiveRecord::Base
  attr_accessible :program_course_id
  
  has_and_belongs_to_many :courses
  belongs_to :program_course
end
