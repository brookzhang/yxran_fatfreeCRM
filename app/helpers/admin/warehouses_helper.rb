module Admin::WarehousesHelper
  def warehouse_select(asset, warehouses, current_warehouse)
    warehouse_options = warehouse_options_for_select(warehouses, current_warehouse)
    select(asset, :assigned_to, warehouse_options,
           { :include_blank => t(:unassigned) },
           { :style         => "width:160px"  })
  end

  def warehouse_options_for_select(warehouses, myself)
    warehouses.map{|u| [u.full_name, u.id]}.prepend([t(:current_warehouse), current_warehouse.id])
  end
end
