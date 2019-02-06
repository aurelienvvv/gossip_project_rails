class GossipsController < ApplicationController
  
  def index

  end

  def show
    @gossip = Gossip.find_by(id: params[:id])
    @author_gossip = User.find(@gossip.user_id).first_name
    @author_gossip_id = User.find(@gossip.user_id)
  end

  def new
    # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    @new_gossip = Gossip.new
    @new_gossip.title = params['title']
    @new_gossip.content = params['body']
    @new_gossip.user_id = 121

    if @new_gossip.save
      redirect_to gossip_path(@new_gossip.id)
    else
      redirect_to new_gossip_path
    end
  end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end
