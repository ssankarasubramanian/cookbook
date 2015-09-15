class ReviewsController < ApplicationController
  
  def destroy
    @review = Review.find(params[:id])
    @recipe = @review.recipe 
    @review.destroy
    flash[:success] = "Your review has been deleted"
    redirect_to @recipe
  end
  
end