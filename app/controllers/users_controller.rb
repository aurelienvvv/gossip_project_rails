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
    user = User.new
    user.first_name = params['first_name']
    user.last_name = params['last_name']
    user.age = params['age']
    user.email = params['email']
    user.city_id = @create_city.id
    user.password = params['password']
    user.password_confirmation = params['password_confirm']

    if user.save
      cookies.signed.encrypted[:user_id] = {value: user.id, expires: 1.day.from_now}
      redirect_to welcome_path

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
