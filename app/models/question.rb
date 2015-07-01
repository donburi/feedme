class Question < ActiveRecord::Base
  belongs_to :order_template
  serialize :options, Array
end
