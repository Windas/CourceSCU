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

ActiveRecord::Schema.define(version: 20161113110300) do

  create_table "data_articles", force: :cascade do |t|
    t.string   "title",                             null: false
    t.boolean  "active",             default: true, null: false
    t.boolean  "published",          default: true, null: false
    t.string   "source"
    t.datetime "published_at"
    t.text     "description"
    t.text     "content",                           null: false
    t.integer  "data_categories_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["data_categories_id"], name: "index_data_articles_on_data_categories_id"
  end

  create_table "data_books", force: :cascade do |t|
    t.string   "title",              default: "",   null: false
    t.text     "description"
    t.boolean  "active",             default: true, null: false
    t.boolean  "published",          default: true, null: false
    t.datetime "published_at"
    t.integer  "data_categories_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["data_categories_id"], name: "index_data_books_on_data_categories_id"
  end

  create_table "data_categories", force: :cascade do |t|
    t.string   "name",                        null: false
    t.boolean  "active",       default: true, null: false
    t.boolean  "published",    default: true, null: false
    t.string   "en_name"
    t.datetime "published_at"
    t.text     "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "data_homeworks", force: :cascade do |t|
    t.string   "title",                       null: false
    t.text     "description",                 null: false
    t.boolean  "active",       default: true, null: false
    t.boolean  "published",    default: true, null: false
    t.datetime "published_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "data_videos", force: :cascade do |t|
    t.string   "title",                             null: false
    t.string   "url",                               null: false
    t.string   "source"
    t.boolean  "active",             default: true, null: false
    t.boolean  "published",          default: true, null: false
    t.datetime "published_at"
    t.text     "description"
    t.integer  "data_categories_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["data_categories_id"], name: "index_data_videos_on_data_categories_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                                                            null: false
    t.string   "encrypted_password",     default: "",                                                            null: false
    t.boolean  "active",                 default: true,                                                          null: false
    t.string   "phone"
    t.string   "nick_name",              default: "",                                                            null: false
    t.string   "name",                   default: "",                                                            null: false
    t.string   "class_number",           default: "",                                                            null: false
    t.string   "focus",                  default: "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23", null: false
    t.string   "description",            default: "",                                                            null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                                                             null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                                                     null: false
    t.datetime "updated_at",                                                                                     null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
