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

ActiveRecord::Schema.define(version: 2019_06_04_132347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.integer "user_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamemodes", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.string "image"
  end

  create_table "hero_recipes", force: :cascade do |t|
    t.integer "hero_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.integer "rarity"
    t.string "role"
    t.string "image"
    t.string "element"
  end

  create_table "ratings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "stars", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "rating"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
