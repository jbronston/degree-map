class CreateCourseOffers < ActiveRecord::Migration
  def change
    create_table :course_offers do |t|
      t.integer :course_id
      t.string :instructor
      t.integer :year

      t.timestamps
    end
  end
end
