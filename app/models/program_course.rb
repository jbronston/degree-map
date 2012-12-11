class ProgramCourse < ActiveRecord::Base
  attr_accessible :program_id
  
  after_create :add_semesters
  before_destroy :delete_semesters
  
  has_many :semesters
  belongs_to :program
  
  def add_semesters
  	for count in 0..3 do
  		self.semesters.push Semester.new
  	end
  end
  
  def delete_semesters
  	self.semesters.each do |semester|
  		semester.destroy
  	end
  end
  
end
