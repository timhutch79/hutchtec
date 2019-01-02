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

ActiveRecord::Schema.define(version: 2019_01_02_224251) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "people", force: :cascade do |t|
    t.integer "user_id"
    t.string "firstname"
    t.string "lastname"
    t.string "perferedname"
    t.date "dateofbirth"
    t.string "gender"
    t.string "personalemail"
    t.string "workemail"
    t.string "mobile"
    t.string "homephone"
    t.string "workphone"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "postcode"
    t.string "state"
    t.string "country"
    t.string "department"
    t.string "office"
    t.string "reportsto"
    t.string "positiontitle"
    t.date "startdate"
    t.date "finsihdate"
    t.string "customtext1"
    t.string "customtext2"
    t.string "customtext3"
    t.string "customtext4"
    t.string "customtext5"
    t.string "customtext6"
    t.string "customtext7"
    t.string "customtext8"
    t.string "customtext9"
    t.string "customtext10"
    t.string "customtext11"
    t.string "customtext12"
    t.date "customdate1"
    t.date "customdate2"
    t.date "customdate3"
    t.date "customdate4"
    t.date "customdate5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
