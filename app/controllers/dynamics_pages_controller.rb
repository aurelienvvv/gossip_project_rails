class DynamicsPagesController < ApplicationController
  def welcome

  end

  def gossip
    @gossip = Gossip.find_by(id: params[:gossip_id])
    @author_gossip = User.find(@gossip.user_id).first_name
  end

  def user
    @author = params[:author_id]
  end
end
