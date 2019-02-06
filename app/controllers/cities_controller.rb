class CitiesController < ApplicationController
  def index
  end

  def show
    @city = City.find(params[:id])
    @city_user = User.where(city_id: @city)
  end
end
