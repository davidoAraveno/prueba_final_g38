class MarkersController < ApplicationController
  def index
    @marker = Marker.new
    @markers = Marker.all
  end

  def create
    @marker = Marker.new(marker_params)
    @marker.save
    respond_to do |format|
      format.js {  }
    end
  end

  private

  def marker_params
    params.require(:marker).permit(:url)
  end
end
