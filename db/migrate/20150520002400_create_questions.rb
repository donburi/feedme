class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :value
      t.references :order_template, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :order_templates
  end
end
