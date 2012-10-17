class Inventory < ActiveRecord::Base
  has_many :histories
  belongs_to :warehouse
  belongs_to :product
  attr_accessible :last_updated_at, :product_id, :quantity, :warehouse_id
end
