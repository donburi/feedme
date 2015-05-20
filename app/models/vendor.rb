class Vendor < ActiveRecord::Base
  has_many :order_templates
end
