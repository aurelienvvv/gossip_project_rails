class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params['email'])

    if user && user.authenticate(params['password'])
    cookies.signed.encrypted[:user_id] = {value: user.id, expires: 1.day.from_now}
    redirect_to welcome_path

    else
      flash.now[:danger] = 'Pas bonne combinaison, rentente'
      render 'new'
    end
  end
  
  def destroy
    if cookies.delete(:user_id)
    redirect_to welcome_path
  end
  end
end