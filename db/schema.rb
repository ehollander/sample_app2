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

ActiveRecord::Schema.define(:version => 20130523004754) do

  create_table "issues", :force => true do |t|
    t.integer  "issue_number"
    t.date     "cover_date"
    t.date     "on_sale_date"
    t.integer  "magazine_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "magazines", :force => true do |t|
    t.string   "title"
    t.string   "division"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "remittances", :force => true do |t|
    t.integer  "issue_id"
    t.integer  "user_id"
    t.integer  "sub_user_id"
    t.string   "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "magazine_id"
  end

  create_table "sub_agencies", :force => true do |t|
    t.string   "sub_agency_name"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "subusers", :force => true do |t|
    t.string   "subname"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
