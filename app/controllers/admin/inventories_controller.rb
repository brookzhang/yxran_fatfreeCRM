class Admin::InventoriesController < ApplicationController
  before_filter "set_current_tab('admin/warehouses')", :only => [ :index, :show ]
  
  #load_resource :warehouse ,:parent=>true
  #load_resource :inventory ,:class=>'Inventory' ,:through => :warehouse ,:parent => false
  
  def index
    @warehouse = Warehouse.find(params[:warehouse_id])
    @inventories = Inventory.unscoped.where(:warehouse_id => @warehouse.id).paginate(:page => params[:page])
    #@inventories = @inventories.unscoped.paginate(:page => params[:page])
  end

  def new
    @warehouse = Warehouse.find(params[:warehouse_id])
    @inventory = Inventory.new
    @products = Product.all()
  end

  def create
    @warehouse = Warehouse.find(params[:warehouse_id])
    @inventory = Inventory.new
    #@inventory = Inventory.new(params[:section])
    #@inventory.warehouse_id = @warehouse.id
    @inventory.update_attributes(params[:inventory])

    respond_with(@inventory)
  end

  def edit
    @warehouse = Warehouse.find(params[:warehouse_id])
  end

  def update
    @warehouse = Warehouse.find(params[:warehouse_id])
    @inventory = Inventory.find(params[:id])
    @inventory.update_attributes(params[:inventory])

    respond_with(@inventory)
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy

    respond_with(@inventory)
  end
  
end
