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

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)

        if @product.save
          redirect_to @product
        else
          render :new, status: :unprocessable_entity
        end
    end

    private
    def product_params
        params.require(:product).permit(:code, :ean, :name, :quantity, :description, :unity, :category)
    end
end

