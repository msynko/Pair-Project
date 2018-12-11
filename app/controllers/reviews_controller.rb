class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @review.comment = params[:review][:comment]

    if @review.save
      redirect_to product_path, notice: "You have created a new review!"
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.comment = params[:review][:comment]

    if @review.save
      redirect_to product_path(@product), notice: "Review has been updated."
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path, notice: "Review has been deleted."
  end

end
