class ChangeResponseFormatInOrder < ActiveRecord::Migration
  def up
    change_column :orders, :response, :text
  end

  def down
    change_column :orders, :response, :string
  end
end
