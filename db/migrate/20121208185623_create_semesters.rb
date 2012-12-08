class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
			t.integer :program_course_id
      
      t.timestamps
    end
  end
end
