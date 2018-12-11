class ReviewsController < ApplicationController

  def create
    @review = Product.new
    @review.name = params[:review][:name]
    @review.description = params[:review][:description]
    @review.price_in_cents = params[:review][:price_in_cents]
    if  @review.save
        redirect_to reviews_path, notice: "You have created a new review!"
      else
        render :new
    end
  end

  def edit
    @review = Product.find(params[:id])
  end

  def update
    @review = Product.find(params[:id])

    @review.name = params[:review][:name]
    @review.description = params[:review][:description]
    @review.price_in_cents = params[:review][:price_in_cents]

    if @review.save
      redirect_to reviews_path(@review), notice: "Product has been updated."
    else
      render :edit
    end
  end

  def destroy
    @review = Product.find(params[:id])
    @review.destroy
    redirect_to "/reviews", notice: "Product has been deleted."
  end

end
