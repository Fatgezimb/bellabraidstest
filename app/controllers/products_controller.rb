class ProductsController < ApplicationController
    # ProductList.jsx should interact with this method
    def index
        @products = Product.all
        @products = @products.where(search_phrase, search: "%#{search.to_s.downcase}%") if search
        render json: @products, status: :ok
    end

    # Product.jsx should interact with this method
    def show
        @product = Product.find(params[:id])
        render json: @product, status: :ok
    end

    # CreateProduct.jsx should interact with this method
    def create
        @product = Product.new(create_product_params)
        if @product.save
            render json: @product
        else
            render json: @product.errors, status: :unprocessable_entity
        end
    end

    # UpdateProduct.jsx should interact with this method
    def update
        @product = Product.find(params[:id])
        if @product.update(update_product_params)
            render json: @product
        else
            render json: @product.errors, status: :unprocessable_entity
        end
    end

    # DeleteProduct.jsx should interact with this method
    def destroy
        @product = Product.find(params[:id])
        @product.soft_destroy
        render json: @product, status: :no_content
    end

    private

    def search
        params[:search]
    end

    def search_phrase
        'lower(name) LIKE :search OR lower(description) LIKE :search'
    end

    def create_product_params
        {
            name: params.require(:name),
            description: params.require(:description),
            price: params.require(:price),
            duration_minutes: params.require(:duration_minutes),
            image_url: params[:image_url]
        }
    end

    def update_product_params
        params.require(:product).permit(:name, :description, :price, :duration_minutes, :image_url)
    end
end
