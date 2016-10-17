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

ActiveRecord::Schema.define(version: 20161017232718) do

  create_table "dedications", force: :cascade do |t|
    t.string  "dedication"
    t.string  "status"
    t.integer "hospital_id"
    t.integer "donor_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.integer  "surgeries"
    t.string   "story"
    t.string   "building_status"
    t.integer  "money_raised"
    t.integer  "cost"
    t.string   "contact"
    t.string   "founded"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "lat",             precision: 10, scale: 6
    t.decimal  "lng",             precision: 10, scale: 6
  end

end