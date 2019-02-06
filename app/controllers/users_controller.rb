class UsersController < ApplicationController
#class GossipsController < ApplicationController
  
  def index
  end

  def show
    @author = User.find(params[:id])
    @author_city = City.find(@author.city_id).name
    @author_city_id = City.find(@author.city_id)
  end

  def new
   
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
