class Admin::StocksController < ApplicationController
  before_filter "set_current_tab('admin/stocks')", :only => [ :index, :show ]
  
  load_resource
  
  def index
    @stocks = @stocks.unscoped.paginate(:page => params[:page])
  end

  def new
  end

  def create
    @stock.update_attributes(params[:stock])

    respond_with(@stock)
  end

  def edit
  end

  def update
    @stock.update_attributes(params[:stock])

    respond_with(@stock)
  end

  def destroy
    @stock.destroy

    respond_with(@stock)
  end
end
