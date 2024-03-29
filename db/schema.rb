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

ActiveRecord::Schema.define(:version => 20130616222400) do

  create_table "authors", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "institution"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.string   "last_name"
    t.string   "email"
    t.string   "remember_token"
    t.integer  "user_id"
    t.integer  "story_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "instructors", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "school"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
  end

  create_table "stories", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "author_id"
    t.string   "synopsis"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "school"
    t.string   "city"
    t.string   "state"
    t.integer  "instructor_id"
    t.integer  "grad_year"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.string   "email"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
