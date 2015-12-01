class BandNamesController < ApplicationController

  def new
    @band_name = Band_Name.new
  end

  def create
    @band_name = Band_Name.new(band_name_params)
    if @band_name.save
      flash[:notice] = "Band name was successfully created"
      redirect_to band_names_path
    else
      render 'new'
    end
  end

  def index
    @band_names = Band_Name.all
  end

  private
  def band_name_params
    params.require(:band_name).permit(:title)
  end

end