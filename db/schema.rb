# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100830173401) do

  create_table "messages", :force => true do |t|
    t.string   "messageCreator"
    t.integer  "messageTopic"
    t.datetime "messageTime"
    t.text     "messageBody"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "postCreator"
    t.string   "postTopic"
    t.datetime "postTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", :force => true do |t|
    t.string   "topicName"
    t.string   "topicType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "userName"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "userId"
    t.string   "userType"
    t.string   "userPassword"
    t.string   "userEmail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
