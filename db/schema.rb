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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141030095822) do

  create_table "abilities", force: true do |t|
    t.string   "name"
    t.string   "professioncy"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.string   "facility_name"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "subject"
    t.string   "transcript"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "future_planes", force: true do |t|
    t.string   "title"
    t.string   "planning_time"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "internships", force: true do |t|
    t.string   "title"
    t.string   "company"
    t.string   "contry"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "postion"
    t.string   "company_annotation"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "status"
    t.integer  "priority"
    t.text     "involved_tool"
    t.text     "involved_team"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_experiences", force: true do |t|
    t.string   "title"
    t.string   "company"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "position"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
