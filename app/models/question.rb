class Question < ActiveRecord::Base
  belongs_to :order_template
  has_many :options
end
