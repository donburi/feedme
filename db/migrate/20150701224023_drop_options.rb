class DropOptions < ActiveRecord::Migration
  def up
   drop_table :options
 end

 def down
   create_table "options", force: :cascade do |t|
     t.integer  "question_id"
     t.string   "name"
     t.string   "description"
     t.decimal  "price",       precision: 6, scale: 2
     t.datetime "created_at",                          null: false
     t.datetime "updated_at",                          null: false
   end
   add_index "options", ["question_id"], name: "index_options_on_question_id"
 end
end
