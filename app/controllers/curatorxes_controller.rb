class CuratorxesController < ApplicationController
  def show
  	@curatorx = Curatorx.find(params[:id]) 
  end
end
