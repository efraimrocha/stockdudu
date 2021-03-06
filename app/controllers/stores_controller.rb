class StoresController < ApplicationController
  def index
    @stores = Store.all
    #@products = Product.all 
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)

    if @store.save
      redirect_to @store
    else
      render :new, status: :unprocessable_entity
    end
  end

  private 
    def store_params
      params.require(:store).permit(:name, :cnpj, :address, :phone)
    end
end



  