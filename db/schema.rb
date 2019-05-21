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

ActiveRecord::Schema.define(version: 20190521152654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "message"
    t.bigint "user_id"
    t.bigint "bounty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bounty_id"], name: "index_applications_on_bounty_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "bounties", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "project_id"
    t.string "title"
    t.string "description"
    t.string "status"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_bounties_on_project_id"
    t.index ["user_id"], name: "index_bounties_on_user_id"
  end

  create_table "bounty_tags", force: :cascade do |t|
    t.bigint "bounty_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bounty_id"], name: "index_bounty_tags_on_bounty_id"
    t.index ["tag_id"], name: "index_bounty_tags_on_tag_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "description"
    t.integer "progress"
    t.string "github_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_tags", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_user_tags_on_tag_id"
    t.index ["user_id"], name: "index_user_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "description"
    t.string "email"
    t.string "password_digest"
    t.string "github_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applications", "bounties"
  add_foreign_key "applications", "users"
  add_foreign_key "bounties", "projects"
  add_foreign_key "bounties", "users"
  add_foreign_key "bounty_tags", "bounties"
  add_foreign_key "bounty_tags", "tags"
  add_foreign_key "projects", "users"
  add_foreign_key "user_tags", "tags"
  add_foreign_key "user_tags", "users"
end
