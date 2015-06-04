class Api::PiecesController < ApplicationController

  def index
    respond_with Piece.all
  end

  def create 
    respond_with Piece.create(post_params)
  end

  def show
    respond_with Piece.find(params[:id])
  end

  private

  def post_params
    params.require(:piece).permit(:title, :medium, :artist, :img_url)
  end
  
end
