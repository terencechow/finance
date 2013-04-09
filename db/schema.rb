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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130409001526) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "article"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "asset_histories", :force => true do |t|
    t.string   "symbol"
    t.date     "valuation_date"
    t.decimal  "open"
    t.decimal  "high"
    t.decimal  "low"
    t.decimal  "close"
    t.decimal  "volume"
    t.decimal  "adjusted_close"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "asset_histories", ["symbol"], :name => "index_asset_histories_on_symbol"

  create_table "asset_informations", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.string   "sector"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "asset_id"
    t.integer  "asset_history_id"
  end

  add_index "asset_informations", ["asset_id", "asset_history_id"], :name => "index_asset_informations_on_asset_id_and_asset_history_id", :unique => true

  create_table "assets", :force => true do |t|
    t.string   "symbol"
    t.decimal  "cost"
    t.decimal  "quantity"
    t.date     "most_recent_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "portfolio_id"
  end

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
  end

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "article_id"
  end

  create_table "portfolios", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "transactions", :force => true do |t|
    t.string   "symbol"
    t.string   "action"
    t.decimal  "quantity"
    t.date     "transact_date"
    t.decimal  "price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "portfolio_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
