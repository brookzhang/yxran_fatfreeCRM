class Admin::InventoriesController < ApplicationController
  before_filter "set_current_tab('admin/warehouses')", :only => [ :index, :show ]
  
  load_resource
  
  def index
    @warehouse = Warehouse.find(params[:warehouse])
    @inventories = @inventories.unscoped.paginate(:page => params[:page])
  end

  def new
  end

  def create
    @inventory.update_attributes(params[:warehouse])

    respond_with(@inventory)
  end

  def edit
  end

  def update
    @inventory.update_attributes(params[:warehouse])

    respond_with(@inventory)
  end

  def destroy
    @inventory.destroy

    respond_with(@inventory)
  end
end
