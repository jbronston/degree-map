class Program < ActiveRecord::Base
  attr_accessible :degree, :dept, :description, :title, :year
  has_many :program_courses
  has_many :courses, :through => program_courses
end
