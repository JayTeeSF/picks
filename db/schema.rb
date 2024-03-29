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

ActiveRecord::Schema.define(:version => 20120302215032) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "symbol"
    t.integer  "industry_id"
    t.string   "exchange"
    t.text     "profile"
    t.text     "investment_blurb"
    t.boolean  "big_dividends"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "companies", ["industry_id"], :name => "index_companies_on_industry_id"
  add_index "companies", ["symbol"], :name => "index_companies_on_symbol", :unique => true

  create_table "fundamentals_histories", :force => true do |t|
    t.integer  "company_id"
    t.float    "pe"
    t.float    "industry_pe"
    t.float    "mkt_cap"
    t.float    "avg_vol"
    t.float    "annualized_dividend"
    t.float    "dividend_yield"
    t.float    "bid"
    t.float    "ask"
    t.float    "fifty_two_wk_high"
    t.float    "fifty_two_wk_low"
    t.date     "collected_on"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "fundamentals_histories", ["company_id", "collected_on"], :name => "index_fundamentals_histories_on_company_id_and_collected_on", :unique => true
  add_index "fundamentals_histories", ["company_id"], :name => "index_fundamentals_histories_on_company_id"

  create_table "industries", :force => true do |t|
    t.string   "name"
    t.integer  "sector_id"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "industries", ["name"], :name => "index_industries_on_name", :unique => true

  create_table "sectors", :force => true do |t|
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sectors", ["name"], :name => "index_sectors_on_name", :unique => true

end
