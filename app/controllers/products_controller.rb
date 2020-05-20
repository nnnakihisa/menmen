class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end


  def create
    redirect_to action: :index
    # @products = Product.create(product_params)
    # Product.create(product_params)
  end

  def search
    # @product = Product.new
    @products = Product.search(params[:keyword])
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end
  private
  def product_params
    params.permit(:image_name, :name, :price, :coment)
  end
end
