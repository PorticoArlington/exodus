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

ActiveRecord::Schema.define(version: 20171101032532) do

  create_table "card_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.integer "card_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_tags_on_card_id"
    t.index ["tag_id"], name: "index_card_tags_on_tag_id"
  end

  create_table "cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.string "title"
    t.string "type"
    t.string "context"
    t.string "subtitle"
    t.string "image"
    t.string "description"
    t.text "embed"
    t.string "internal_name"
    t.boolean "bookmarkable"
    t.datetime "display_start_datetime"
    t.datetime "display_end_datetime"
    t.string "published"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["context"], name: "index_cards_on_context"
    t.index ["display_end_datetime"], name: "index_cards_on_display_end_datetime"
    t.index ["display_start_datetime"], name: "index_cards_on_display_start_datetime"
    t.index ["end_datetime"], name: "index_cards_on_end_datetime"
    t.index ["published"], name: "index_cards_on_published"
    t.index ["start_datetime"], name: "index_cards_on_start_datetime"
    t.index ["type"], name: "index_cards_on_type"
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.integer "user_id"
    t.integer "card_id"
    t.boolean "bookmarked"
    t.boolean "registered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bookmarked"], name: "index_user_cards_on_bookmarked"
    t.index ["card_id"], name: "index_user_cards_on_card_id"
    t.index ["registered"], name: "index_user_cards_on_registered"
    t.index ["user_id"], name: "index_user_cards_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
