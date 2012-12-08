class Program < ActiveRecord::Base
  attr_accessible :college, :degree, :dept, :description, :title, :year
  
  has_one :program_course
end
