class Course < ActiveRecord::Base
  attr_accessible :credit, :description, :title
 
 	has_and_belongs_to_many :semesters
 	has_many :course_offers
end
