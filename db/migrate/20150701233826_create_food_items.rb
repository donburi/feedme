class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.decimal :price
      t.text :description
      t.references :vendor, index: true

      t.timestamps null: false
    end
    add_foreign_key :food_items, :vendors
  end
end
