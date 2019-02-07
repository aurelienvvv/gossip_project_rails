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
    @create_city = City.create(name: params['city'], postal_code: 93150)
    @new_user = User.new
    @new_user.first_name = params['first_name']
    @new_user.last_name = params['last_name']
    @new_user.age = params['age']
    @new_user.email = params['email']
    @new_user.city_id = @create_city.id
    @new_user.password = params['password']
    @new_user.password_confirmation = params['password_confirm']

    if @new_user.save
      redirect_to user_path(@new_user.id)
    else
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
