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

ActiveRecord::Schema.define(version: 20160109213815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carousel_products", force: :cascade do |t|
    t.string   "photo"
    t.integer  "product_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "carousel_products", ["product_id"], name: "index_carousel_products_on_product_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "categories", ["category_id"], name: "index_categories_on_category_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.string   "small"
    t.string   "large"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photos", ["product_id"], name: "index_photos_on_product_id", using: :btree

  create_table "popular_products", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "photo"
    t.decimal  "promotional_price", precision: 15, scale: 2, default: 0.0
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "popular_products", ["product_id"], name: "index_popular_products_on_product_id", using: :btree

  create_table "product_specifications", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "property_id"
    t.text     "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "product_specifications", ["product_id"], name: "index_product_specifications_on_product_id", using: :btree
  add_index "product_specifications", ["property_id"], name: "index_product_specifications_on_property_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.string   "photo"
    t.decimal  "price",          precision: 15, scale: 2, default: 0.0
    t.string   "description"
    t.string   "model"
    t.float    "weight"
    t.integer  "units_in_stock"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "properties", force: :cascade do |t|
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "properties", ["category_id"], name: "index_properties_on_category_id", using: :btree

  add_foreign_key "carousel_products", "products"
  add_foreign_key "categories", "categories"
  add_foreign_key "photos", "products"
  add_foreign_key "popular_products", "products"
  add_foreign_key "product_specifications", "products"
  add_foreign_key "product_specifications", "properties"
  add_foreign_key "products", "categories"
  add_foreign_key "properties", "categories"
end
