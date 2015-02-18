class DrawingsController < ApplicationController
 
  def index
    @drawings = Drawing.all.order(created_at: :desc)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    # new_drawing = params.require(:drawing).permit(:drawing)
    image_string = params[:drawing]
    new_drawing= Drawing.create({drawing: image_string})
    render :json => new_drawing
  end
end
