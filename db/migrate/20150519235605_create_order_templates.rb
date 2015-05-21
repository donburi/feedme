class CreateOrderTemplates < ActiveRecord::Migration
  def change
    create_table :order_templates do |t|
      t.references :vendor, index: true

      t.timestamps null: false
    end
    add_foreign_key :order_templates, :vendors
  end
end
