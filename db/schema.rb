# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_08_21_132814) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "phone"
    t.string "trek_name"
    t.date "start_date"
    t.date "end_date"
    t.integer "number_of_people"
    t.text "special_requests"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.text "description"
    t.boolean "featured"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heros", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "safaris", force: :cascade do |t|
    t.string "title"
    t.integer "duration"
    t.string "difficulty"
    t.string "overview_title"
    t.text "overview_description"
    t.text "main_attractions"
    t.string "best_season"
    t.decimal "price_per_person"
    t.integer "min_people"
    t.integer "max_people"
    t.string "departure_location"
    t.string "return_location"
    t.string "accommodation_type"
    t.string "transport_type"
    t.text "included_services"
    t.text "excluded_services"
    t.text "what_to_bring"
    t.text "daily_activities"
    t.text "wildlife_highlight"
    t.boolean "is_featured"
    t.string "status"
    t.text "main_image_alt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "author_name"
    t.string "author_title"
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travel_tours", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.integer "duration"
    t.string "category"
    t.boolean "featured"
    t.text "highlights"
    t.text "includes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trekkings", force: :cascade do |t|
    t.string "title"
    t.integer "duration"
    t.string "difficulty"
    t.string "overview_title"
    t.text "overview_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
