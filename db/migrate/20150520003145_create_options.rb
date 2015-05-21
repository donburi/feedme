class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.references :question, index: true
      t.string :name
      t.string :description
      t.decimal :price, :precision => 6, :scale => 2

      t.timestamps null: false
    end
    add_foreign_key :options, :questions
  end
end
