class DynamicsPagesController < ApplicationController
  def welcome

  end

  def gossip
    
  end

  def user
    @author = User.find_by(id: params[:author_id])
    @author_city = City.find(@author.city_id).name
  end
end