class ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all.order("created_at DESC").page(params[:page]).per(8)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
      if @review.save
      redirect_to root_path
      end
  end

  def show
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:beer_name, :image, :text, :rate, :abv, :ibu, :ec_goodbeer, :ec_amazon, :ec_rakuten, :beer_spot_name, :beer_spot_city, :beer_spot_url, :reviewer_id, :style_id, :brewery_id)  
  end

end