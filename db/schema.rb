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

ActiveRecord::Schema.define(version: 20131228104141) do

  create_table "addresses", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.integer  "state_id"
    t.string   "phone"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id", using: :btree

  create_table "billing_infos", force: true do |t|
    t.string   "month"
    t.integer  "year"
    t.string   "cc_last"
    t.string   "cc_type"
    t.string   "fname"
    t.string   "lname"
    t.integer  "address_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_item_cart_joins", force: true do |t|
    t.integer  "inventory_item_id"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventory_item_cart_joins", ["cart_id"], name: "index_inventory_item_cart_joins_on_cart_id", using: :btree
  add_index "inventory_item_cart_joins", ["inventory_item_id"], name: "index_inventory_item_cart_joins_on_inventory_item_id", using: :btree

  create_table "inventory_item_types", force: true do |t|
    t.integer  "inventory_item_id_id"
    t.string   "variant"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventory_item_types", ["inventory_item_id_id"], name: "index_inventory_item_types_on_inventory_item_id_id", using: :btree

  create_table "inventory_item_wishlist_joins", id: false, force: true do |t|
    t.integer  "inventory_item_id"
    t.integer  "wishlist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventory_item_wishlist_joins", ["inventory_item_id"], name: "index_inventory_item_wishlist_joins_on_inventory_item_id", using: :btree
  add_index "inventory_item_wishlist_joins", ["wishlist_id"], name: "index_inventory_item_wishlist_joins_on_wishlist_id", using: :btree

  create_table "inventory_items", force: true do |t|
    t.integer  "store_id"
    t.text     "description"
    t.boolean  "featured"
    t.string   "private_name"
    t.integer  "price"
    t.string   "public_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventory_items", ["store_id"], name: "index_inventory_items_on_store_id", using: :btree

  create_table "line_items", force: true do |t|
    t.integer  "inventory_item_id"
    t.integer  "quantity"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["inventory_item_id"], name: "index_line_items_on_inventory_item_id", using: :btree
  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "states", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transaction_histories", force: true do |t|
    t.integer  "order_id"
    t.string   "transaction_id"
    t.string   "transaction_type"
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transaction_histories", ["order_id"], name: "index_transaction_histories_on_order_id", using: :btree
  add_index "transaction_histories", ["user_id"], name: "index_transaction_histories_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
    t.string   "lname"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "whishlists", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
