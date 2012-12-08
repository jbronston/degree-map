class CreateProgramCourses < ActiveRecord::Migration
  def change
    create_table :program_courses do |t|
      t.integer :program_id

      t.timestamps
    end
  end
end
