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

ActiveRecord::Schema.define(version: 20160530215209) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_shipments", force: :cascade do |t|
    t.integer  "sent"
    t.integer  "return"
    t.integer  "product_id"
    t.integer  "customer_id"
    t.date     "ship_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "product_shipments", ["customer_id"], name: "index_product_shipments_on_customer_id"
  add_index "product_shipments", ["product_id"], name: "index_product_shipments_on_product_id"

  create_table "production_runs", force: :cascade do |t|
    t.integer  "producer_id"
    t.integer  "product_id"
    t.integer  "amount"
    t.date     "mfgd_date"
    t.date     "expiry_date"
    t.string   "lot_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "production_runs", ["producer_id"], name: "index_production_runs_on_producer_id"
  add_index "production_runs", ["product_id"], name: "index_production_runs_on_product_id"

  create_table "production_shipments", force: :cascade do |t|
    t.integer  "sent"
    t.integer  "return"
    t.integer  "product_id"
    t.integer  "customer_id"
    t.date     "ship_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "production_shipments", ["customer_id"], name: "index_production_shipments_on_customer_id"
  add_index "production_shipments", ["product_id"], name: "index_production_shipments_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "amount"
    t.integer  "adjust"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "name"
    t.integer  "amount"
    t.string   "unit"
    t.integer  "adjust"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supply_consumptions", force: :cascade do |t|
    t.integer  "supply_id"
    t.integer  "amount"
    t.integer  "production_run_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "supply_consumptions", ["production_run_id"], name: "index_supply_consumptions_on_production_run_id"
  add_index "supply_consumptions", ["supply_id"], name: "index_supply_consumptions_on_supply_id"

  create_table "supply_shipments", force: :cascade do |t|
    t.integer  "rcvd"
    t.integer  "return"
    t.integer  "supply_id"
    t.integer  "supplier_id"
    t.date     "ship_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "supply_shipments", ["supplier_id"], name: "index_supply_shipments_on_supplier_id"
  add_index "supply_shipments", ["supply_id"], name: "index_supply_shipments_on_supply_id"

end
