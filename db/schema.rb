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

ActiveRecord::Schema.define(version: 20130914201420) do

  create_table "faces", force: true do |t|
    t.string   "name",                        null: false
    t.string   "image",                       null: false
    t.float    "elo_rating", default: 1600.0
    t.integer  "won",        default: 0
    t.integer  "lost",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.string   "location"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "id_name"
    t.string   "link"
    t.string   "username"
    t.string   "gender"
    t.string   "locale"
    t.string   "timezone"
    t.string   "updated_time"
    t.string   "token"
    t.string   "urls"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
