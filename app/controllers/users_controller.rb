class UsersController < ApplicationController

  def show
    authorize! :read, current_user
  	@user = User.find(params[:id])
    @user_courses = @user.courses ||= []
    @all = Course.all    
  	authorize! :read, @user

  end

  def add
    authorize! :add, @user
    @user = User.find(session[:user_id])
    @course = Course.find(params[:id])
    @user_courses = @user.courses ||= []
    @user_courses << @course
    redirect_to @user.courses.last
  end
end
