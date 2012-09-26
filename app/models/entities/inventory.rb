class Inventory < ActiveRecord::Base
  has_many :histories
  belongs_to :warehouse
  attr_accessible :last_updated_at, :product_id, :quantity, :warehouse_id
end
