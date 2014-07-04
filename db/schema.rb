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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140623042744) do
=======
ActiveRecord::Schema.define(version: 20140616212932) do
>>>>>>> login&logout

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "callcenters", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "people_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "callcenters", ["people_id"], name: "index_callcenters_on_people_id", using: :btree

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["person_id"], name: "index_cities_on_person_id", using: :btree

  create_table "colleges", force: true do |t|
    t.string   "name"
    t.string   "career"
    t.integer  "people_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "colleges", ["people_id"], name: "index_colleges_on_people_id", using: :btree

  create_table "contact_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "contact_type_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["contact_type_id"], name: "index_contacts_on_contact_type_id", using: :btree

  create_table "notes", force: true do |t|
    t.string   "value"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["person_id"], name: "index_notes_on_person_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "firstName"
    t.string   "middleName"
    t.string   "lastName"
    t.string   "secondLastName"
    t.datetime "DOB"
    t.string   "HID"
    t.integer  "EnglishLevel"
    t.integer  "SpanishLevel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "residences", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "residences", ["city_id"], name: "index_residences_on_city_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.decimal  "score"
    t.decimal  "WPM"
    t.decimal  "retention"
    t.decimal  "overall"
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tests", ["campaign_id"], name: "index_tests_on_campaign_id", using: :btree
  add_index "tests", ["user_id"], name: "index_tests_on_user_id", using: :btree

  create_table "universities", force: true do |t|
    t.string   "name"
    t.string   "career"
    t.integer  "people_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "universities", ["people_id"], name: "index_universities_on_people_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.integer  "campaign_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["campaign_id"], name: "index_users_on_campaign_id", using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

<<<<<<< HEAD
  create_table "welcomes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

=======
>>>>>>> login&logout
end
