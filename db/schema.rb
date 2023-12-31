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

ActiveRecord::Schema[7.1].define(version: 2023_11_16_192202) do
  create_table "assets", force: :cascade do |t|
    t.integer "house_id"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "assetable_type", null: false
    t.integer "assetable_id", null: false
    t.index ["assetable_type", "assetable_id"], name: "index_assets_on_assetable"
    t.index ["car_id"], name: "index_assets_on_car_id"
    t.index ["house_id"], name: "index_assets_on_house_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "asset_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_transactions_on_asset_id"
  end

  add_foreign_key "assets", "cars"
  add_foreign_key "assets", "houses"
  add_foreign_key "transactions", "assets"
end
