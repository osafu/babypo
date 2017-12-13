class TopController < ApplicationController
  def index
    @search = Spot.ransack(params[:q])
    @spots = @search.result(distinct: true)
  end
end
