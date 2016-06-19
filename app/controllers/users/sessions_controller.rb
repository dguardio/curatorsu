class Users::SessionsController < Devise::SessionsController
  include ApplicationHelper
  before_action :set_courses

  def create
    super
  end

  def new
    super
  end
  
  private

  def set_courses
    @courses = Course.all
  end
end
