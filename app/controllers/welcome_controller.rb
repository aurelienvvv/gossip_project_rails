class WelcomeController < ApplicationController
  def index
    @name = params[:user_name]
    #@user_find = User.all.sample
    end
end
