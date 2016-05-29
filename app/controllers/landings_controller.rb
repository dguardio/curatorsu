class LandingsController < ApplicationController
  def index
  	@courses = Course.last(4).reverse
  end
end
