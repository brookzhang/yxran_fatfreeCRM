class Stock < ActiveRecord::Base
  has_many :stock_products
  attr_accessible :name, :remark, :status
  
  def status_name
    self.status == 1 ? :stock_status_active : :stock_status_inactive
  end
  
  def product_count
    
  end
  
end
