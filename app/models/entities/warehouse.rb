class Warehouse < ActiveRecord::Base
  
  has_many :inventories
  attr_accessible :name, :remark, :status
  
  def status_name
    self.status == 1 ? :warehouse_status_active : :warehouse_status_inactive
  end
  
  def product_count
    
  end
  
end
