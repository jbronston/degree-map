class CreateProgramCourses < ActiveRecord::Migration
  def change
    create_table :program_courses do |t|
      t.integer :program_id
      t.integer :course_id
      t.integer :prerequisite_cid

      t.timestamps
    end
  end
end
