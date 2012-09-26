class Admin::WarehousesController < ApplicationController
  before_filter "set_current_tab('admin/warehouses')", :only => [ :index, :show ]
  
  load_resource
  
  def index
    @warehouses = @warehouses.unscoped.paginate(:page => params[:page])
  end

  def new
  end

  def create
    @warehouse.update_attributes(params[:warehouse])

    respond_with(@warehouse)
  end

  def edit
  end

  def update
    @warehouse.update_attributes(params[:warehouse])

    respond_with(@warehouse)
  end

  def destroy
    @warehouse.destroy

    respond_with(@warehouse)
  end
end
