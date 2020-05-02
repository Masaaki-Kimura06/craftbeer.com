class ReviewersController < ApplicationController
  def show    
    @reviewer = Reviewer.find(params[:id]) 
    @reviews = Review.where(reviewer_id: @reviewer).order("created_at DESC").page(params[:page]).per(8)
  end

  def new
    @reviewer = Reviewer.new 
  end

  def create
    @reviewer = Reviewer.new(reviewer_params)
      if @reviewer.save
      redirect_to root_path
      end
  end

  private
  def reviewer_params
    params.require(:reviewer).permit(:company_name, :reviewer_name, :image, :guide_text)
  end
end
