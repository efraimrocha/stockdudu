class StoresController < ApplicationController
  def index
    @stores = Store.all
    #@products = Product.all 
  end

  def show
    @store = Store.find(params[:id])
  end

end


  