class CreateOrderSheets < ActiveRecord::Migration
  def change
    create_table :order_sheets do |t|
      t.references :order_template, index: true
      t.date :order_day

      t.timestamps null: false
    end
    add_foreign_key :order_sheets, :order_templates
  end
end
