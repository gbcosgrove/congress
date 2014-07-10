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

ActiveRecord::Schema.define(version: 20140710044522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "politicians", force: true do |t|
    t.string   "title"
    t.string   "chamber"
    t.string   "firstname"
    t.string   "nickname"
    t.string   "last_name"
    t.string   "name_suffix"
    t.string   "party"
    t.string   "state"
    t.string   "state_name"
    t.integer  "district"
    t.boolean  "in_office"
    t.string   "gender"
    t.datetime "birthdate"
    t.string   "term_start"
    t.string   "term_end"
    t.integer  "senate_class"
    t.string   "bioguide_id"
    t.string   "thomas_id"
    t.string   "lis_id"
    t.string   "votesmart_id"
    t.string   "fec_ids"
    t.string   "govtrack_id"
    t.string   "crp_id"
    t.text     "contact_form"
    t.string   "facebook_id"
    t.string   "fax"
    t.string   "leadership_role"
    t.string   "ocd_id"
    t.text     "office"
    t.string   "phone"
    t.string   "twitter_id"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_parameters", force: true do |t|
    t.string   "name"
    t.string   "parameter"
    t.string   "kind"
    t.string   "category"
    t.string   "method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
