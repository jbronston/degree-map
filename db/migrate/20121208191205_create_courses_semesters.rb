class CreateCoursesSemesters < ActiveRecord::Migration
  def self.up
    create_table :courses_semesters, :id => false do |t| # join table, so no primary key
      t.integer :course_id, :null=>false  # foreign key
      t.integer :semester_id, :null=>false  # foreign key

      t.timestamps
    end
  end

  def self.down
    drop_table :courses_semesters
  end
end
