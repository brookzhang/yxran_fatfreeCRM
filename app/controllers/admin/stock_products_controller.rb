class Admin::StockProductsController < ApplicationController
  before_filter "set_current_tab('admin/stocks')", :only => [ :index, :show ]
  
  #load_resource
  
  def index
    @stock = Stock.find(params[:stock_id])
    @stock_products = StockProduct.where("stock_id= ?",params[:stock_id]).order("sequence asc").unscoped.paginate(:page => params[:page])
    #@stock_products = @stock_products.unscoped.paginate(:page => params[:page])
  end

  def new
    @stock = Stock.find(params[:stock_id])
    @stock_product = StockProduct.new()
  end

  def create
    @stock_product.update_attributes(params[:@stock_product])

    respond_with(@stock_product)
  end

  def edit
  end

  def update
    @stock_product.update_attributes(params[:stock])

    respond_with(@stock_product)
  end

  def destroy
    @stock_product.destroy

    respond_with(@stock_product)
  end
end
