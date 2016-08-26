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

ActiveRecord::Schema.define(version: 20160719074339) do

  create_table "authorizedusers", force: :cascade do |t|
    t.string   "companyname"
    t.string   "usertype"
    t.string   "username"
    t.string   "year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "calenders", force: :cascade do |t|
    t.date     "dates"
    t.time     "times"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companycreations", force: :cascade do |t|
    t.string   "companyname"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customermasters", force: :cascade do |t|
    t.string   "customername"
    t.string   "customeraddress"
    t.string   "customerfax"
    t.string   "customerphone"
    t.string   "customeremail"
    t.integer  "customertin"
    t.integer  "customercst"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "companyname"
    t.string   "username"
    t.string   "year"
  end

  create_table "invoicing_ledger_items", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.string   "type"
    t.datetime "issue_date"
    t.string   "currency",     limit: 3,                           null: false
    t.decimal  "total_amount",            precision: 20, scale: 4
    t.decimal  "tax_amount",              precision: 20, scale: 4
    t.string   "status",       limit: 20
    t.string   "identifier",   limit: 50
    t.string   "description"
    t.datetime "period_start"
    t.datetime "period_end"
    t.string   "uuid",         limit: 40
    t.datetime "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoicing_line_items", force: :cascade do |t|
    t.integer  "ledger_item_id"
    t.string   "type"
    t.decimal  "net_amount",                precision: 20, scale: 4
    t.decimal  "tax_amount",                precision: 20, scale: 4
    t.string   "description"
    t.string   "uuid",           limit: 40
    t.datetime "tax_point"
    t.decimal  "quantity",                  precision: 20, scale: 4
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoicing_tax_rates", force: :cascade do |t|
    t.string   "description"
    t.decimal  "rate",           precision: 20, scale: 4
    t.datetime "valid_from",                              null: false
    t.datetime "valid_until"
    t.integer  "replaced_by_id"
    t.boolean  "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productmasters", force: :cascade do |t|
    t.string   "productname"
    t.string   "productqty"
    t.string   "productamt"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "companyname"
    t.string   "username"
    t.string   "year"
  end

  create_table "samplecreations", force: :cascade do |t|
    t.string   "sample"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scheduletimes", force: :cascade do |t|
    t.time     "scheduletime"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "skillsets", force: :cascade do |t|
    t.string   "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliermasters", force: :cascade do |t|
    t.string   "suppliername"
    t.string   "supplieraddress"
    t.string   "supplierfax"
    t.string   "supplierphone"
    t.string   "supplieremail"
    t.integer  "suppliertin"
    t.integer  "suppliercst"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "companyname"
    t.string   "username"
    t.string   "year"
  end

  create_table "usercreations", force: :cascade do |t|
    t.string   "usertype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yearcreations", force: :cascade do |t|
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
