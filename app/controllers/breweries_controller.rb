class BreweriesController < ApplicationController
  def show   
    @brewery = Brewery.find(params[:id])
    @reviews = Review.where(brewery_id: @brewery).order("created_at DESC").page(params[:page]).per(8)
  end  

  def new
    @brewery = Brewery.new 
  end

  def create
    @brewery = Brewery.new(brewery_params)
      if @brewery.save
      redirect_to root_path
      end
  end

  private
  def brewery_params
    params.require(:brewery).permit(:brewery_name, :brewery_country, :brewery_city, :image, :text)
  end

end
