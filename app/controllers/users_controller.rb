class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@user_courses = @user.courses ||= []
  	@all = Course.all
  end

  def add
    @user = User.find(session[:user_id])
    @course = Course.find(params[:id])
    @user_courses = @user.courses ||= []
    @user_courses << @course
    redirect_to @user.courses.last
  end
end
