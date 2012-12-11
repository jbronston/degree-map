class Program < ActiveRecord::Base
  attr_accessible :college, :degree, :dept, :description, :title, :year
  
  after_create :assign_degree_map
  before_destroy :destroy_degree_map
  
  has_one :program_course
  
  def assign_degree_map 
  	new_program_course = ProgramCourse.new
  	self.program_course = new_program_course	
  end
  
  def destroy_degree_map
  	self.program_course.destroy
  end
  
end
