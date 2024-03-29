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

ActiveRecord::Schema.define(:version => 20130410193505) do

  create_table "employers", :force => true do |t|
    t.string   "name"
    t.text     "industry"
    t.text     "location"
    t.string   "est_year"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.text     "number_of_employees"
    t.text     "category_code"
    t.text     "description"
    t.text     "funding"
    t.string   "homepage_url"
    t.integer  "user_id"
    t.string   "email"
  end

  create_table "interview_appts", :force => true do |t|
    t.integer  "interview_id"
    t.datetime "date_time"
    t.string   "purpose"
    t.string   "location"
    t.string   "interviewer"
    t.text     "comments"
    t.text     "follow_up"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "interviews", :force => true do |t|
    t.integer  "student_id"
    t.integer  "employer_id"
    t.string   "follow_up"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "status"
  end

  create_table "preferences", :force => true do |t|
    t.integer  "employer_id"
    t.integer  "student_id"
    t.string   "interest_expressed_by"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "preferred_industry"
    t.string   "preferred_location"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.string   "email"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "role"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
