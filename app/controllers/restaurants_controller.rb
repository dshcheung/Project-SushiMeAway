class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def search
    district_id = params['restaurant']['district_id']
    @restaurants = District.find(district_id).restaurants
    render 'index'
  end

  def show
    @comment = Comment.new
    @restaurant = Restaurant.find(params[:id])
  end
end
