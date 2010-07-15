# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100715013146) do

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                 :limit => 100, :default => ""
    t.string   "email",                :limit => 100
    t.string   "encrypted_password",   :limit => 40
    t.string   "password_salt",        :limit => 40
    t.string   "remember_token",       :limit => 40
    t.string   "state",                               :default => "passive"
    t.string   "type"
    t.string   "jobline_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "experiences"
    t.text     "qualifications"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "reset_password_token"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["jobline_user_id"], :name => "index_users_on_jobline_candidate_id"
  add_index "users", ["name"], :name => "index_users_on_name"
  add_index "users", ["type"], :name => "index_users_on_type"

end
