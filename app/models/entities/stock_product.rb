class StockProduct < ActiveRecord::Base
  has_many :stock_product_histories
  belongs_to :stock 
  belongs_to :product
  
  attr_accessible :product_id, :quangtity, :stock_id
end
