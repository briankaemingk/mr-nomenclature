class BandNamesController < ApplicationController

  def new
    @band_name = BandName.new
  end

  def create
    @band_name = BandName.new(band_name_params)
    @band_name.user = User.first
    if @band_name.save
      #flash[:success] = "Band name created"
      redirect_to band_names_path
    else
      render 'new'
    end
  end

  def index
    @band_names = BandName.order(title: :asc)
  end

  private
  def band_name_params
    params.require(:band_name).permit(:title)
  end

end