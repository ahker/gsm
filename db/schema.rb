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

ActiveRecord::Schema.define(:version => 20130430061742) do

  create_table "contacts", :force => true do |t|
    t.string   "companyname"
    t.text     "address1"
    t.text     "address2"
    t.text     "address3"
    t.text     "address4"
    t.text     "address5"
    t.string   "postcode"
    t.string   "buyer"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "status"
    t.text     "notes"
    t.string   "region"
    t.string   "country"
    t.integer  "salutation"
    t.string   "updated_by"
    t.integer  "archived"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "logins", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "samples", :force => true do |t|
    t.string   "samp_id"
    t.date     "iss_date"
    t.date     "tar_date"
    t.text     "desc"
    t.string   "priority"
    t.string   "samp_file_name"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "samp_file_name_file_name"
    t.string   "samp_file_name_content_type"
    t.integer  "samp_file_name_file_size"
    t.datetime "samp_file_name_updated_at"
    t.integer  "status"
    t.integer  "user_id"
    t.string   "awb_number"
    t.text     "courier_name"
    t.date     "date_sent"
  end

  create_table "usermodules", :force => true do |t|
    t.string   "module_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usersampdescs", :force => true do |t|
    t.integer  "sample_id"
    t.text     "desc"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "samp_file_name"
    t.string   "samp_file_name_file_name"
    t.string   "samp_file_name_content_type"
    t.integer  "samp_file_name_file_size"
    t.datetime "samp_file_name_updated_at"
    t.integer  "user_id"
  end

  add_index "usersampdescs", ["sample_id"], :name => "index_usersampdescs_on_sample_id"

end
