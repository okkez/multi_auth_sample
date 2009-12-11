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

ActiveRecord::Schema.define(:version => 20091211040704) do

  create_table "email_credentials", :force => true do |t|
    t.datetime "created_at",                      :null => false
    t.string   "activation_token", :limit => 40,  :null => false
    t.integer  "user_id",                         :null => false
    t.string   "email",            :limit => 200, :null => false
    t.string   "hashed_password",  :limit => 73,  :null => false
    t.datetime "activated_at"
    t.datetime "loggedin_at"
  end

  add_index "email_credentials", ["activated_at"], :name => "index_email_credentials_on_activated_at"
  add_index "email_credentials", ["activation_token"], :name => "index_email_credentials_on_activation_token", :unique => true
  add_index "email_credentials", ["created_at"], :name => "index_email_credentials_on_created_at"
  add_index "email_credentials", ["email"], :name => "index_email_credentials_on_email", :unique => true
  add_index "email_credentials", ["user_id"], :name => "index_email_credentials_on_user_id"

  create_table "open_id_authentication_associations", :force => true do |t|
    t.integer "issued"
    t.integer "lifetime"
    t.string  "handle"
    t.string  "assoc_type"
    t.binary  "server_url"
    t.binary  "secret"
  end

  create_table "open_id_authentication_nonces", :force => true do |t|
    t.integer "timestamp",  :null => false
    t.string  "server_url"
    t.string  "salt",       :null => false
  end

  create_table "open_id_credentials", :force => true do |t|
    t.datetime "created_at",                  :null => false
    t.integer  "user_id",                     :null => false
    t.string   "identity_url", :limit => 200, :null => false
    t.datetime "loggedin_at"
  end

  add_index "open_id_credentials", ["identity_url"], :name => "index_open_id_credentials_on_identity_url", :unique => true
  add_index "open_id_credentials", ["user_id"], :name => "index_open_id_credentials_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
