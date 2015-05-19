class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :cuisine
      t.string :website
      t.string :contact_number
      t.string :email
      t.string :contact_person

      t.timestamps null: false
    end
  end
end
