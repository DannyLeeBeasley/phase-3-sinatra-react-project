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

ActiveRecord::Schema.define(version: 2021_08_05_194119) do

  create_table "customers", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.datetime "first_visit"
    t.datetime "most_recent_visit"
  end

  create_table "menu_items", force: :cascade do |t|
    t.text "name"
    t.float "price"
    t.text "image"
    t.text "category"
  end

  create_table "order_items", force: :cascade do |t|
    t.float "price"
    t.integer "order_id"
    t.integer "menu_item_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_placed_at"
    t.float "total_price"
    t.integer "customer_id"
  end

end
