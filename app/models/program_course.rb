class ProgramCourse < ActiveRecord::Base
  attr_accessible :course_id, :prerequisite_cid, :program_id
  belongs_to :course
  belongs_to :program
end
