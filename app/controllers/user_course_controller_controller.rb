class UserCourseControllerController < ApplicationController
  def show
    @course = UserCourse.find params[:id]
  end
end
