class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@user_courses = @user.courses ||= []
  	@all = Course.all
  end
end
