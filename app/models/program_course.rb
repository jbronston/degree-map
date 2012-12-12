class ProgramCourse < ActiveRecord::Base
  attr_accessible :program_id, :course1, :course2, :course3, :course4, :course5, :course6, :course7, :course8, :course9, :course10, :course11, :course12, :course13, :course14, :course15, :course16, :course17, :course18, :course19, :course20, :course21, :course22, :course23, :course24, :course25, :course26, :course27, :course28, :course29, :course30, :course31, :course32, :course33, :course34, :course35, :course36, :course37, :course38, :course39, :course40
  after_create :add_semesters
  before_destroy :delete_semesters
  before_save :assign_classes
  
  has_many :semesters
  belongs_to :program
  
  def add_semesters
  	for count in 0..7 do
  		self.semesters.push Semester.new
  	end
  	
  end
  
  def delete_semesters
  	self.semesters.each do |semester|
  		semester.destroy
  	end
  end
  
  def all_available_courses
  	
  	temp_courses = Course.all
  	temp_array = Array.new
  	
  	temp_courses.each do |each_course|
  		temp_array.push [each_course.title, each_course.id]
  	end
  	
  	return temp_array
  end

  	
  def assign_classes
  	unless self.course1 == nil
  		self.semesters[0].courses[0] = self.course1
  	end
  end	



end
