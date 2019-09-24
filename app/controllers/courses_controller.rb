class CoursesController < ApplicationController
before_action :authenticate_user!
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:description, :cost, :image)
  end
end