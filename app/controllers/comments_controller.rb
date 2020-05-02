class CommentsController < ApplicationController
 
  def new
    @review = Review.find(params[:review_id])
    @comment = Comment.new
 end
 
 
  def create
    comment = Comment.create(comment_params)
    redirect_to "/reviews/#{comment.review.id}" 
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :rate, :beer_spot_name, :beer_spot_city, :beer_spot_url).merge(user_id: current_user.id, review_id: params[:review_id])
  end
end
