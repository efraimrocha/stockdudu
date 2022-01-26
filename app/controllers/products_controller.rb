class ProductsController < ApplicationController
    # def create
    #     @store = Store.find(params[:store_id])
    #     @product = @store.products.create(product_params)
    #     redirect_to store_path(@store)
    # end

    # private
    # def products_params
    #     params.require(:product).permit(:comenter, :body)
        
    # end
   
    def show
        @store = Store.find(params[:store_id])
        @product = @store.products.find(params[:id])
    end

end

