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

ActiveRecord::Schema[7.0].define(version: 2023_07_13_002107) do
  create_table "breeds", force: :cascade do |t|
    t.string "name"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.string "size"
    t.index ["owner_id"], name: "index_breeds_on_owner_id"
  end

  create_table "breeds_owners", id: false, force: :cascade do |t|
    t.integer "owner_id"
    t.integer "breed_id"
    t.index ["breed_id"], name: "index_breeds_owners_on_breed_id"
    t.index ["owner_id"], name: "index_breeds_owners_on_owner_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "breed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_images_on_breed_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.integer "breed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.index ["breed_id"], name: "index_owners_on_breed_id"
  end

  add_foreign_key "breeds", "owners"
  add_foreign_key "images", "breeds"
  add_foreign_key "owners", "breeds"
end
