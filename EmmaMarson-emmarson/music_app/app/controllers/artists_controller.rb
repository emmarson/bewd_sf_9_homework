class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
 
  def create
  @artist = Artist.new(artist_params)

  if @artist.save
    redirect_to @artist
  else
    render 'new'
  end
end
 
private
  def artist_params
    params.require(:artist).permit(:name)
  end
end