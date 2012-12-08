class ProgramCourse < ActiveRecord::Base
  attr_accessible :program_id
  
  has_many :semesters
  belongs_to :program
end
