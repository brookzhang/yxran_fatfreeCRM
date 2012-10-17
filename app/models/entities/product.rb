class Product < ActiveRecord::Base
  has_many :inventories
  attr_accessible :measurement, :name, :remark, :unit_price
  
  
end
