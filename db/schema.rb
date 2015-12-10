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

ActiveRecord::Schema.define(version: 20151210204632) do

  create_table "availability_slots", force: true do |t|
    t.integer  "booking_id",      null: false
    t.integer  "listing_id",      null: false
    t.datetime "start_date_time", null: false
    t.datetime "end_date_time",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "bookings", force: true do |t|
    t.integer  "total",      null: false
    t.integer  "listing_id", null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: true do |t|
    t.string   "street",              null: false
    t.string   "city",                null: false
    t.string   "state",               null: false
    t.string   "zipcode",             null: false
    t.integer  "parking_spot_type",   null: false
    t.integer  "hourly_price",        null: false
    t.integer  "daily_price",         null: false
    t.integer  "weekly_price",        null: false
    t.integer  "monthly_price",       null: false
    t.boolean  "compact_accepted",    null: false
    t.boolean  "fullsize_accepted",   null: false
    t.boolean  "oversized_accepted",  null: false
    t.string   "space_description"
    t.string   "neighborhood_info"
    t.string   "public_transit_info"
    t.string   "other_info"
    t.string   "rules"
    t.boolean  "instant_booking",     null: false
    t.integer  "user_id",             null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "reviews", force: true do |t|
    t.integer  "user_id",         null: false
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
    t.text     "review_body",     null: false
    t.integer  "review_score",    null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                               null: false
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "phone",                               null: false
    t.string   "zipcode"
    t.text     "description"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["provider"], name: "index_users_on_provider"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["uid"], name: "index_users_on_uid"

end
