class History < ActiveRecord::Base
  belongs_to :inventory
  attr_accessible :adjusted_by, :adjusted_to, :adjusted_type, :inventory_id, :remark
end
