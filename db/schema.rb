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

ActiveRecord::Schema.define(:version => 20120623152248) do

  create_table "addresses", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.integer  "country_id"
    t.integer  "region_id"
    t.integer  "city_id"
    t.string   "line_one"
    t.string   "line_two"
    t.string   "line_three"
    t.string   "appt_no"
    t.string   "postal_zip_code"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "intersection_one"
    t.string   "intersection_two"
    t.boolean  "active"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authentications", ["user_id"], :name => "index_authentications_on_user_id"

  create_table "cities", :force => true do |t|
    t.integer  "region_id"
    t.integer  "address_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["address_id"], :name => "index_cities_on_address_id"
  add_index "cities", ["region_id"], :name => "index_cities_on_region_id"

  create_table "countries", :force => true do |t|
    t.integer  "address_id"
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "countries", ["address_id"], :name => "index_countries_on_address_id"

  create_table "flags", :force => true do |t|
    t.integer  "flagable_id"
    t.string   "flagable_type"
    t.string   "flag"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "housing_types", :force => true do |t|
    t.integer  "listing_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "housing_types", ["listing_id"], :name => "index_housing_types_on_listing_id"

  create_table "identities", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "images", :force => true do |t|
    t.binary   "image"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "laundry_types", :force => true do |t|
    t.integer  "listing_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "laundry_types", ["listing_id"], :name => "index_laundry_types_on_listing_id"

  create_table "listings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "term_type_id"
    t.integer  "housing_type_id"
    t.integer  "utilities_type_id"
    t.integer  "laundry_type_id"
    t.integer  "pet_type_id"
    t.integer  "rooms"
    t.decimal  "amount"
    t.boolean  "basement"
    t.integer  "views"
    t.boolean  "separate_entrance"
    t.boolean  "furnished"
    t.boolean  "parking"
    t.boolean  "internet"
    t.boolean  "cable"
    t.boolean  "balcony_backyard"
    t.text     "description"
    t.boolean  "active"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "listings", ["user_id"], :name => "index_listings_on_user_id"

  create_table "pet_types", :force => true do |t|
    t.integer  "listing_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "pet_types", ["listing_id"], :name => "index_pet_types_on_listing_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "regions", :force => true do |t|
    t.integer  "country_id"
    t.integer  "address_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "regions", ["address_id"], :name => "index_regions_on_address_id"
  add_index "regions", ["country_id"], :name => "index_regions_on_country_id"

  create_table "term_types", :force => true do |t|
    t.integer  "listing_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "term_types", ["listing_id"], :name => "index_term_types_on_listing_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "address_id"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "utilities_types", :force => true do |t|
    t.integer  "listing_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "utilities_types", ["listing_id"], :name => "index_utilities_types_on_listing_id"

end
