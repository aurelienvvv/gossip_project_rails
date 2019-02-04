class WelcomeController < ApplicationController
  def index
    @name = params[:user_name]
    @gossip_rand = Gossip.all.sample
    end

    def gossip_link

    end
end
