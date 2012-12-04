class Course < ActiveRecord::Base
  attr_accessible :credit, :description, :title
  has_many :course_offers
  has_many :program_courses
  has_many :programs, :through => program_courses
end
