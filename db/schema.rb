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

ActiveRecord::Schema.define(version: 20150523055426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string  "name"
    t.integer "value"
    t.integer "build_points"
    t.integer "initial_hand"
    t.integer "initial_hand_draw_per_atlas"
    t.integer "draw"
    t.integer "draw_per_atlas"
  end

  add_index "categories", ["value"], name: "index_categories_on_value", using: :btree

  create_table "instincts", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

end
