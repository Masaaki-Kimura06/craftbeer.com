class StylesController < ApplicationController
  
  def show
    
  @style = Style.find(params[:id])

  @reviews = Review.where(style_id: @style).order("created_at DESC").page(params[:page]).per(8)
  end
    
end
