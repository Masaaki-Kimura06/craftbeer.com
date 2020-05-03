class StylesController < ApplicationController
  def show
  @style = Style.find(params[:id])
  @reviews = Review.where(style_id: @style).order("created_at DESC").page(params[:page]).per(8)
  end

  def new
    @style = Style.new 
  end

  def create
    @style = Style.new(style_params)
      if @style.save
      redirect_to root_path
      end
  end

  private
  def style_params
    params.require(:style).permit(:beer_style, :text, :image)
  end
    
end
