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

ActiveRecord::Schema[7.0].define(version: 2023_06_12_101359) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "posts_id", null: false
    t.index ["posts_id"], name: "index_comments_on_posts_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.integer "order_id", null: false
    t.integer "user_id", null: false
    t.index ["order_id"], name: "index_orders_on_order_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
    t.index ["users_id"], name: "index_orders_on_users_id"
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cost"
    t.integer "quantity", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "email"
    t.float "age"
    t.integer "order_id", null: false
    t.integer "orders_id", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["order_id"], name: "index_users_on_order_id"
    t.index ["orders_id"], name: "index_users_on_orders_id"
  end

  add_foreign_key "comments", "posts", column: "posts_id"
  add_foreign_key "orders", "orders"
  add_foreign_key "orders", "users"
  add_foreign_key "users", "orders"
  add_foreign_key "users", "orders", column: "orders_id"
end
