class MarkersController < ApplicationController
  def index
    @marker_category = MarkerCategory.new
    @category = Category.new
    @marker = Marker.new
    @markers = Marker.all
    @categories = Category.all
    @marker_categories = MarkerCategory.all

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
    elsif params[:marker_category]
      @marker_category = MarkerCategory.new(marker_category_params)
      @marker_category.save
      respond_to do |format|
        format.js {  }
      end
    end
  end

  def categories_endpoint
    @categories = Category.all
    render json: @categories.to_json
  end

  private

  def marker_params
    params.require(:marker).permit(:url)
  end

  def category_params
    params.require(:category).permit(:name)
  end

  def marker_category_params
    params.require(:marker_category).permit(:marker_id, :category_id, :type_relation)
  end

end
