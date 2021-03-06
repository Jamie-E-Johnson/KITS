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

ActiveRecord::Schema.define(version: 20130807155641) do

  create_table "interns", force: true do |t|
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "last_name"
    t.string   "local_city"
    t.string   "classification"
    t.date     "dob"
    t.string   "ethnicity"
    t.string   "major"
    t.string   "school_congress_district"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "school"
    t.string   "local_state"
    t.string   "home_city"
    t.string   "home_state"
    t.string   "home_congress_district"
    t.string   "comments"
  end

  create_table "internships", force: true do |t|
    t.string   "season"
    t.string   "year"
    t.string   "program"
    t.string   "nasa_internships"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "intern_id"
  end

  create_table "search_attributes", force: true do |t|
    t.integer  "search_id"
    t.string   "drop_down"
    t.string   "criteria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
