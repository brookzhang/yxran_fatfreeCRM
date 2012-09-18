class Admin::ProductsController < Admin::ApplicationController
  before_filter "set_current_tab('admin/products')", :only => [ :index, :show ]
  
  load_resource
  
  def index
    @products = @products.unscoped.paginate(:page => params[:page])
  end

  def new
  end

  def create
    @product.update_attributes(params[:product])

    respond_with(@product)
  end

  def edit
  end

  def update
    @product.update_attributes(params[:product])

    respond_with(@product)
  end

  def destroy
    @product.destroy

    respond_with(@product)
  end
end
