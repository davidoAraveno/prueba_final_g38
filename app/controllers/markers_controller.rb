class MarkersController < ApplicationController
  def index
    @category = Category.new
    @marker = Marker.new
    @type = Type.new
    @markers = Marker.all
    @categories = Category.all
    @types = Type.all
  end

  def create
    if params[:marker]
      @marker = Marker.new(marker_params)
      @marker.save
      respond_to do |format|
        format.js {  }
      end
    elsif params[:category]
      @category = Category.new(category_params)
      @category.save
      respond_to do |format|
        format.js {  }
      end
    elsif params[:type]
      @type = Type.new(type_params)
      @type.save
      respond_to do |format|
        format.js {  }
      end
    end
  end

  private

  def marker_params
    params.require(:marker).permit(:url)
  end

  def category_params
    params.require(:category).permit(:name)
  end

  def type_params
    params.require(:type).permit(:name)
  end


end
