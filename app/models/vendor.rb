class Vendor < ActiveRecord::Base
  has_many :order_templates
  has_many :food_items
end
