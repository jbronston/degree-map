class CourseOffer < ActiveRecord::Base
  attr_accessible :course_id, :instructor, :year
  belongs_to :course
end
