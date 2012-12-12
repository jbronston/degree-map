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

 def load_class_name_array
  	class_array = Array.new
  	
  	index = 0
  	
  	unless self.course1 == nil
  		current_course = Course.where("id = ?", self.course1)
  		class_array[index] = current_course[0].title
  		index += 1
  	end		
  	 	
  	unless self.course2 == nil
  		current_course = Course.where("id = ?", self.course2)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course3 == nil
  		current_course = Course.where("id = ?", self.course3)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	

  	unless self.course4 == nil
  		current_course = Course.where("id = ?", self.course4)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course5 == nil
  		current_course = Course.where("id = ?", self.course5)
  		class_array[index] = current_course[0].title
  	end	

		index = 5
  	
  	unless self.course6 == nil
  		current_course = Course.where("id = ?", self.course6)
  		class_array[index] = current_course[0].title
  		index += 1
  	end		
  	 	
  	unless self.course7 == nil
  		current_course = Course.where("id = ?", self.course7)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course8 == nil
  		current_course = Course.where("id = ?", self.course8)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	

  	unless self.course9 == nil
  		current_course = Course.where("id = ?", self.course9)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course10 == nil
  		current_course = Course.where("id = ?", self.course10)
  		class_array[index] = current_course[0].title
  	end	

		index = 10
  	
  	unless self.course11 == nil
  		current_course = Course.where("id = ?", self.course11)
  		class_array[index] = current_course[0].title
  		index += 1
  	end		
  	 	
  	unless self.course12 == nil
  		current_course = Course.where("id = ?", self.course12)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course13 == nil
  		current_course = Course.where("id = ?", self.course13)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	

  	unless self.course14 == nil
  		current_course = Course.where("id = ?", self.course14)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course15 == nil
  		current_course = Course.where("id = ?", self.course15)
  		class_array[index] = current_course[0].title
  	end	

		index = 15
  	
  	unless self.course16 == nil
  		current_course = Course.where("id = ?", self.course16)
  		class_array[index] = current_course[0].title
  		index += 1
  	end		
  	 	
  	unless self.course17 == nil
  		current_course = Course.where("id = ?", self.course17)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course18 == nil
  		current_course = Course.where("id = ?", self.course18)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	

  	unless self.course19 == nil
  		current_course = Course.where("id = ?", self.course19)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course20 == nil
  		current_course = Course.where("id = ?", self.course20)
  		class_array[index] = current_course[0].title
  	end	

		index = 20
  	
  	unless self.course21 == nil
  		current_course = Course.where("id = ?", self.course21)
  		class_array[index] = current_course[0].title
  		index += 1
  	end		
  	 	
  	unless self.course22 == nil
  		current_course = Course.where("id = ?", self.course22)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course23 == nil
  		current_course = Course.where("id = ?", self.course23)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	

  	unless self.course24 == nil
  		current_course = Course.where("id = ?", self.course24)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course25 == nil
  		current_course = Course.where("id = ?", self.course25)
  		class_array[index] = current_course[0].title
  	end	
  	
  	index = 25
  	
  	unless self.course26 == nil
  		current_course = Course.where("id = ?", self.course26)
  		class_array[index] = current_course[0].title
  		index += 1
  	end		
  	 	
  	unless self.course27 == nil
  		current_course = Course.where("id = ?", self.course27)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course28 == nil
  		current_course = Course.where("id = ?", self.course28)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	

  	unless self.course29 == nil
  		current_course = Course.where("id = ?", self.course29)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course30 == nil
  		current_course = Course.where("id = ?", self.course30)
  		class_array[index] = current_course[0].title
  	end	

		index = 30
  	
  	unless self.course31 == nil
  		current_course = Course.where("id = ?", self.course31)
  		class_array[index] = current_course[0].title
  		index += 1
  	end		
  	 	
  	unless self.course32 == nil
  		current_course = Course.where("id = ?", self.course32)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course33 == nil
  		current_course = Course.where("id = ?", self.course33)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	

  	unless self.course34 == nil
  		current_course = Course.where("id = ?", self.course34)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course35 == nil
  		current_course = Course.where("id = ?", self.course35)
  		class_array[index] = current_course[0].title
  	end	

		index = 35
  	
  	unless self.course36 == nil
  		current_course = Course.where("id = ?", self.course36)
  		class_array[index] = current_course[0].title
  		index += 1
  	end		
  	 	
  	unless self.course37 == nil
  		current_course = Course.where("id = ?", self.course37)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course38 == nil
  		current_course = Course.where("id = ?", self.course38)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	

  	unless self.course39 == nil
  		current_course = Course.where("id = ?", self.course39)
  		class_array[index] = current_course[0].title
  		index += 1
  	end	
  	
  	unless self.course40 == nil
  		current_course = Course.where("id = ?", self.course40)
  		class_array[index] = current_course[0].title
  	end	

  	return class_array
  
  end

end
