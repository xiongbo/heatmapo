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

ActiveRecord::Schema.define(version: 20131104030818) do

  create_table "heats", force: true do |t|
    t.float    "xpoint"
    t.float    "ypoint"
    t.string   "screen_ratio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  add_index "heats", ["site_id"], name: "index_heats_on_site_id"

  create_table "sites", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "width",      limit: 255, default: 0
    t.integer  "height",     limit: 255, default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
