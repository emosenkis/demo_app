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

ActiveRecord::Schema.define(:version => 20120607125605) do

  create_table "game_events", :force => true do |t|
    t.integer  "scenario"
    t.string   "title"
    t.text     "description"
    t.string   "picture"
    t.string   "buttons"
    t.integer  "task"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "game_tasks", :force => true do |t|
    t.integer  "scenario"
    t.string   "title"
    t.text     "description"
    t.string   "manager"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scenarios", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "picture"
    t.boolean  "all_gps"
    t.boolean  "gps_per_team"
    t.boolean  "all_camera"
    t.boolean  "camera_per_team"
    t.boolean  "all_phone"
    t.boolean  "phone_per_team"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
