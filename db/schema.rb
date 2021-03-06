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

ActiveRecord::Schema.define(version: 20160404055344) do

  create_table "ads", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "category_id", limit: 4
    t.text     "Ad",          limit: 65535
    t.integer  "user_id",     limit: 4
    t.integer  "product_id",  limit: 4
  end

  create_table "bids", force: :cascade do |t|
    t.integer  "price",      limit: 4
    t.text     "content",    limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "bid",             limit: 4
    t.text     "message",         limit: 65535
    t.integer  "user_id",         limit: 4
    t.integer  "product_id",      limit: 4
    t.integer  "notification_id", limit: 4
  end

  create_table "notification_offers", force: :cascade do |t|
    t.integer  "price",       limit: 4
    t.text     "content",     limit: 65535
    t.integer  "user_id",     limit: 4
    t.integer  "product_id",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "notifier_id", limit: 4
    t.integer  "notifiee_id", limit: 4
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "notifier_id", limit: 4
    t.integer  "notifiee_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "message",     limit: 255
    t.integer  "product_id",  limit: 4
    t.integer  "comment_id",  limit: 4
    t.string   "Type",        limit: 255
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "product_id",         limit: 4
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "name",        limit: 255
    t.integer  "price",       limit: 4
    t.text     "description", limit: 65535
    t.text     "reason",      limit: 65535
    t.integer  "user_id",     limit: 4
    t.string   "status",      limit: 255
    t.integer  "category_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

end
