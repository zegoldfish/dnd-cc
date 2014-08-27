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

ActiveRecord::Schema.define(version: 20140826231317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ability_scores", force: true do |t|
    t.string   "ability_score_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alignments", force: true do |t|
    t.string   "alignment_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "backgrounds", force: true do |t|
    t.string   "background_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", force: true do |t|
    t.string   "campaign_name"
    t.integer  "rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_ability_scores", force: true do |t|
    t.integer  "character_id"
    t.integer  "ability_score_type_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_attribute_types", force: true do |t|
    t.string   "attribute_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_attributes", force: true do |t|
    t.integer  "character_attribute_type_id"
    t.string   "attribute_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_backgrounds", force: true do |t|
    t.integer  "character_id"
    t.integer  "background_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_class_types", force: true do |t|
    t.string   "character_class_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_classes", force: true do |t|
    t.integer  "character_id"
    t.integer  "character_class_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level"
  end

  create_table "characters", force: true do |t|
    t.integer  "player_id"
    t.text     "character_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "race_id"
    t.string   "sex"
    t.integer  "height"
    t.integer  "alignment_id"
    t.integer  "campaign_id"
    t.integer  "experience_points"
  end

  create_table "item_types", force: true do |t|
    t.string   "item_type_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "item_name"
    t.integer  "item_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "language_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.integer  "experience_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.text     "player_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "race_attribute_types", force: true do |t|
    t.string   "race_attribute_type"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "race_attributes", force: true do |t|
    t.integer  "race_attribute_type_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", force: true do |t|
    t.string   "race_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", force: true do |t|
    t.string   "rule_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
