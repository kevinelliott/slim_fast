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

ActiveRecord::Schema.define(:version => 20121004234536) do

  create_table "expansions", :force => true do |t|
    t.integer  "short_url_id"
    t.integer  "domain_id"
    t.string   "request_url"
    t.string   "referrer_url"
    t.string   "remote_ip"
    t.string   "remote_addr"
    t.string   "user_agent"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "short_domains", :force => true do |t|
    t.string   "domain"
    t.boolean  "is_default", :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "short_urls", :force => true do |t|
    t.integer  "short_domain_id"
    t.string   "code"
    t.string   "destination_url"
    t.string   "name"
    t.text     "description"
    t.integer  "expansion_count", :default => 0
    t.string   "owner_type"
    t.integer  "owner_id"
    t.boolean  "utm_enabled",     :default => false
    t.string   "utm_source"
    t.string   "utm_medium"
    t.string   "utm_campaign"
    t.string   "utm_term"
    t.string   "utm_content"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
