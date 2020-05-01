class BreweryController < ApplicationController
   def show   
    @brewery = Brewery.find(params[:id])
    @reviews = Review.where(brewery_id: @brewery).order("created_at DESC").page(params[:page]).per(8)
    end
end
