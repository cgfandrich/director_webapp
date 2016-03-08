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

ActiveRecord::Schema.define(version: 20160303211545) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "experiment_configs", force: :cascade do |t|
    t.integer  "ack_rate",    limit: 4
    t.integer  "ack_size",    limit: 4
    t.integer  "packet_size", limit: 4
    t.integer  "packet_rate", limit: 4
    t.integer  "duration",    limit: 4
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "description", limit: 255
    t.string   "name",        limit: 255
    t.float    "geo_lng",     limit: 24
    t.float    "geo_lat",     limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "streaming_servers", force: :cascade do |t|
    t.string   "ip_address",  limit: 255
    t.string   "ip_port",     limit: 255
    t.integer  "provider_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
