class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.integer :year
      t.string :dept
      t.string :degree
      t.text :description
      t.text :college

      t.timestamps
    end
  end
end
