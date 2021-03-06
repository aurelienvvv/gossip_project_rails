class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new]
  def index

  end

  def show
    @gossip_user = Gossip.find(params[:id]).user_id
    @gossip = Gossip.find(params[:id])
    @author_gossip = User.find(@gossip.user_id).first_name
    @author_gossip_id = User.find(@gossip.user_id)
    @author_gossip_city = City.find(User.find(@gossip.user_id).city_id).name
    @comments = Comm.where(gossip_id: @gossip)
    session[:receip] = Gossip.find(params[:id]).user_id
  
  end

  def new
  end

  def create
    @new_gossip = Gossip.new
    @new_gossip.title = params['title']
    @new_gossip.content = params['body']
    @new_gossip.user_id = session[:user_id]

    if @new_gossip.save
      redirect_to gossip_path(@new_gossip.id)
    else
      redirect_to new_gossip_path
    end

  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])

    if @gossip.update(title: params["title"].join, content:params["content"].join, user_id: @gossip.user_id)
      redirect_to @gossip
    else
      redirect_to new_gossip_path
    end

  end

  def authenticate_user
    if session[:user_id].nil?
      redirect_to new_session_path
    else
      render :new
    end

  end

  def destroy
    @gossip = Gossip.find(params[:id])

    if @gossip.destroy
      redirect_to gossips_path
    else
      redirect_to @gossip 
  end
end
end
