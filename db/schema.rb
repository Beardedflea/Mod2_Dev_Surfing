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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_21_174648) do

  create_table "attendances", force: :cascade do |t|
    t.integer "course_id"
    t.integer "student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "start_date"
    t.date "end_date"
    t.time "lesson_duration"
    t.string "day_of_week"
    t.integer "teacher_id"
    t.integer "skill_id"
    t.integer "location_id"
    t.string "img_url"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img_url"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "creator"
    t.string "content"
    t.string "img_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "email"
    t.string "bio"
    t.string "credentials"
    t.integer "age"
    t.string "profile_pic"
  end

end
