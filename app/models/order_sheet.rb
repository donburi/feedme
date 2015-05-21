class OrderSheet < ActiveRecord::Base
  belongs_to :order_template
  has_many :orders
end
