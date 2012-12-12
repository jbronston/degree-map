# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121212025913) do

  create_table "course_offers", :force => true do |t|
    t.integer  "course_id"
    t.string   "instructor"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "credit"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "courses_semesters", :id => false, :force => true do |t|
    t.integer  "course_id",   :null => false
    t.integer  "semester_id", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "program_courses", :force => true do |t|
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "course1"
    t.integer  "course2"
    t.integer  "course3"
    t.integer  "course4"
    t.integer  "course5"
    t.integer  "course6"
    t.integer  "course7"
    t.integer  "course8"
    t.integer  "course9"
    t.integer  "course10"
    t.integer  "course11"
    t.integer  "course12"
    t.integer  "course13"
    t.integer  "course14"
    t.integer  "course15"
    t.integer  "course16"
    t.integer  "course17"
    t.integer  "course18"
    t.integer  "course19"
    t.integer  "course20"
    t.integer  "course21"
    t.integer  "course22"
    t.integer  "course23"
    t.integer  "course24"
    t.integer  "course25"
    t.integer  "course26"
    t.integer  "course27"
    t.integer  "course28"
    t.integer  "course29"
    t.integer  "course30"
    t.integer  "course31"
    t.integer  "course32"
    t.integer  "course33"
    t.integer  "course34"
    t.integer  "course35"
    t.integer  "course36"
    t.integer  "course37"
    t.integer  "course38"
    t.integer  "course39"
    t.integer  "course40"
  end

  create_table "programs", :force => true do |t|
    t.string   "title"
    t.integer  "year"
    t.string   "dept"
    t.string   "degree"
    t.text     "description"
    t.text     "college"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "semesters", :force => true do |t|
    t.integer  "program_course_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
