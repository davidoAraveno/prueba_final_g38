class MarkersController < ApplicationController
  def index
    @marker_category = MarkerCategory.new
    @category = Category.new
    @marker = Marker.new
    @markers = Marker.all
    @categories = Category.all
    @marker_categories = MarkerCategory.all

  end

  def show
    @marker_categories = MarkerCategory.find(params[:id])
    @marker = Marker.new
    @category = Category.new
    @marker_category = MarkerCategory.new
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


  def update
    if params[:marker]
      @marker = Marker.find(params[:id])
      @marker.update(marker_params_edit)
      redirect_to root_path
    elsif params[:category]
      @category = Category.find(params[:id])
      @category.update(category_params)
      redirect_to root_path
    elsif params[:marker_category]
      @marker_category = MarkerCategory.find(params[:id])
      @marker_category.update(marker_category_params)
      redirect_to root_path
    end
  end



  def categories_endpoint
    @categories = Category.all
    render json: @categories.to_json
  end

  def destroy
    @marker = MarkerCategory.find(params[:id])
    @marker.destroy
    redirect_to root_path
  end

  private

  def marker_params
    params.require(:marker).permit(:url)
  end
  def marker_params_edit
    params.require(:marker).permit(:url, :id)
  end


  
  def category_params
    params.require(:category).permit(:name, :id)
  end

  def marker_category_params
    params.require(:marker_category).permit(:marker_id, :category_id, :type_relation)
  end

end
