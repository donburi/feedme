class OrderTemplate < ActiveRecord::Base
  belongs_to :vendor
  has_many :questions
  has_many :order_sheets
  serialize :items, Array
end
