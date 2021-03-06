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

ActiveRecord::Schema.define(version: 20140913105009) do

  create_table "answers", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "estimated_fee"
    t.string   "estimated_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "question_id"
    t.integer  "lawyer_id"
  end

  add_index "answers", ["lawyer_id"], name: "index_answers_on_lawyer_id"
  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "lawyers", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "registration_number"
    t.text     "address"
    t.string   "phone"
    t.string   "city"
    t.boolean  "admin",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lawyers", ["email"], name: "index_lawyers_on_email", unique: true
  add_index "lawyers", ["reset_password_token"], name: "index_lawyers_on_reset_password_token", unique: true

  create_table "questions", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "email"
    t.string   "phone"
  end

end
