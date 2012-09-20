class StockProductHistory < ActiveRecord::Base
  belongs_to :stock_product
  
  attr_accessible :adjuested_to, :adjust_type, :adjusted_by, :remark, :stock_product_id
end
