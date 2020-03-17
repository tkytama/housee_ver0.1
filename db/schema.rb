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

ActiveRecord::Schema.define(version: 2020_02_12_133323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "edit_architectures", force: :cascade do |t|
    t.string "architect"
    t.string "architect_title"
    t.string "architect_comment"
    t.integer "completion_year"
    t.integer "completion_month"
    t.string "address"
    t.integer "address_id"
    t.integer "picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "edit_profile_id", null: false
    t.index ["edit_profile_id"], name: "index_edit_architectures_on_edit_profile_id"
    t.index ["user_id"], name: "index_edit_architectures_on_user_id"
  end

  create_table "edit_profiles", force: :cascade do |t|
    t.string "office_name"
    t.integer "office_id"
    t.string "surname", null: false
    t.string "lastname"
    t.string "position"
    t.integer "postal_cord"
    t.string "address"
    t.integer "address_id"
    t.string "average_cost"
    t.integer "phon_number"
    t.string "architect_concept"
    t.string "office_url"
    t.string "review_user"
    t.string "review"
    t.integer "review_id"
    t.integer "average_review_point"
    t.date "review_at"
    t.string "relation"
    t.integer "completion_at"
    t.string "project_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_edit_profiles_on_user_id"
  end

  create_table "edit_rooms", force: :cascade do |t|
    t.string "room_title"
    t.string "room_comment"
    t.integer "office_id"
    t.integer "architect_id"
    t.integer "completion_year"
    t.integer "completion_month"
    t.string "address"
    t.integer "address_id"
    t.integer "function_id"
    t.string "room_area"
    t.string "room_name"
    t.integer "picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "edit_architecture_id", null: false
    t.index ["edit_architecture_id"], name: "index_edit_rooms_on_edit_architecture_id"
    t.index ["user_id"], name: "index_edit_rooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "surname"
    t.string "lastname"
    t.date "date_of_birth"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
