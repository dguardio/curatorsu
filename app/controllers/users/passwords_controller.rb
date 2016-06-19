class Users::PasswordsController < Devise::PasswordsController
  include ApplicationHelper
    before_action :set_courses

  def new
    super
  end

  private

  def set_courses
    @courses = Course.all
  end
end
