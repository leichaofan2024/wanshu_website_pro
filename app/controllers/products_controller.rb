class ProductsController < ApplicationController
  before_action :find_product,only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!,only: [:new,:edit,:create,:update,:delete]
  def index
    @products= Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(
                                         :title,
                                         :description,
                                         :structure,
                                         :processor,
                                         :chip,
                                         :memory,
                                         :disk,
                                         :network_controller,
                                         :expand_groove,
                                         :video_card,
                                         :exterior_port,
                                         :power,
                                         :temperature_evn,
                                         :humidity_evn)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
