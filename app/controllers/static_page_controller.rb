class StaticPageController < ApplicationController

  def contact
  end

  def team
    @user1 = User.first
    @user2 = User.last
    @gossip1 = Gossip.last
  end
end
