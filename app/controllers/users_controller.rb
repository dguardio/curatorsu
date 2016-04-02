class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def studyzone
  	@user = User.course.mods
  end
end
