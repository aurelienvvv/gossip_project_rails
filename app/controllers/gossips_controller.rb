class GossipsController < ApplicationController
  
  def index

  end

  def show
    @gossip = Gossip.find_by(id: params[:id])
    @author_gossip = User.find(@gossip.user_id).first_name
    @author_gossip_id = User.find(@gossip.user_id)
    @author_gossip_city = City.find(User.find(@gossip.user_id).city_id).name
  end

  def new
  end

  def create
    @new_gossip = Gossip.new
    @new_gossip.title = params['title']
    @new_gossip.content = params['body']
    @anonymous = User.create(first_name: "Anonymous"  ,last_name: "Anonymous" ,email:"xxxx@gmail.com" ,age: rand(15..25) ,city_id: 5)
    @new_gossip.user_id = @anonymous.id

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
    @anonymous = User.create(first_name: "Anonymous"  ,last_name: "Anonymous" ,email:"xxxx@gmail.com" ,age: rand(15..25) ,city_id: 5)
    @gossip = Gossip.find(params[:id])
# puts params.require(:gossip).permit(:title, :content).inspect

    if @gossip.update(title: params["title"], content:params["content"], user_id: @anonymous.id)
    redirect_to @gossip
  else
    render :edit
  end

  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end
