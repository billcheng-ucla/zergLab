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

ActiveRecord::Schema.define(version: 20161023232625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "labs", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scientists", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.integer  "lab_id"
    t.index ["lab_id"], name: "index_scientists_on_lab_id", using: :btree
  end

  create_table "zergs", force: :cascade do |t|
    t.string   "identification"
    t.string   "type"
    t.string   "strand"
    t.string   "image"
    t.integer  "lab_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["lab_id"], name: "index_zergs_on_lab_id", using: :btree
  end

  add_foreign_key "scientists", "labs"
  add_foreign_key "zergs", "labs"
end
