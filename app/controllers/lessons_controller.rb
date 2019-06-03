class LessonsController < ApplicationController
  before_action :authenticate_user!
  
  def show

  end

  def create
    @lesson = current_user.lessons.create(course_params)
    if @course.valid?
      redirect_to courses_path, alert: 'You are not Enrolled'
    end
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
