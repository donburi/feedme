class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.references :order_sheet, index: true
      t.string :response
      t.boolean :in_office
      t.string :notes

      t.timestamps null: false
    end
    add_foreign_key :orders, :users
    add_foreign_key :orders, :order_sheets
  end
end
