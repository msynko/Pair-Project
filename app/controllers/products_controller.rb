class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
    @review = Review.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]
    if  @product.save
        redirect_to products_path, notice: "You have created a new product!"
      else
        render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to products_path(@product), notice: "Product has been updated."
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products", notice: "Product has been deleted."
  end

end
