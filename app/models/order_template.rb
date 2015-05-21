class OrderTemplate < ActiveRecord::Base
  belongs_to :vendor
  has_many :questions
end
