class AddItemsToOrderTemplates < ActiveRecord::Migration
  def change
    add_column :order_templates, :items, :text
  end
end
