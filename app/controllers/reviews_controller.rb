class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @review.comment = params[:review][:comment]
    @product = Product.find(params[:product_id])
    @review.product = @product

    if @review.save
      redirect_to product_path(@product), notice: "You have created a new review!"
    else
      render product_path(@product)
    end
  end

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
    @review.product = @product
  end

  def update
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
    @review.product = @product
    @review.comment = params[:review][:comment]

    if @review.save
      redirect_to product_path(@product), notice: "Review has been updated."
    else
      render edit_product_review_path
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
    @review.product = @product
    @review.destroy
    redirect_to product_path(@product), notice: "Review has been deleted."
  end

end
