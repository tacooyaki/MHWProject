# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_11_221738) do
  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "rank"
    t.string "image_male"
    t.string "image_female"
    t.integer "defense"
    t.string "resistance"
    t.text "skills"
    t.integer "slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "crafting_materials"
  end

  create_table "armors_crafting_materials", id: false, force: :cascade do |t|
    t.integer "armor_id", null: false
    t.integer "crafting_material_id", null: false
  end

  create_table "crafting_materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crafting_materials_weapons", id: false, force: :cascade do |t|
    t.integer "weapon_id", null: false
    t.integer "crafting_material_id", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "rarity"
    t.string "icon"
    t.string "image"
    t.integer "attack_power"
    t.string "element"
    t.string "sharpness"
    t.integer "affinity"
    t.integer "slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "crafting_materials"
  end

end