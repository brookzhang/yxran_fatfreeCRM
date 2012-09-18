class Product < ActiveRecord::Base
  attr_accessible :measurement, :name, :remark, :unit_price
  
  
end
