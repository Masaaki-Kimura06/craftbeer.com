class ReviewerController < ApplicationController

  def show    
    @reviewer = Reviewer.find(params[:id]) 
    @reviews = Review.where(reviewer_id: @reviewer).order("created_at DESC").page(params[:page]).per(8)
  end
end
