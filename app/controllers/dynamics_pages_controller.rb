class DynamicsPagesController < ApplicationController
  def welcome

  end

  def gossip
    @gossip = Gossip.find_by(id: params[:gossip_id])
    @author_gossip = User.find(@gossip.user_id).first_name
    @author_gossip_id = User.find(@gossip.user_id)
  end

  def user
    @author = User.find_by(id: params[:author_id])
    @author_city = City.find(@author.city_id).name
  end
end