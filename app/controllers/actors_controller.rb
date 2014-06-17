class ActorsController < ApplicationController
 
  def index
    @actors= Actor.all
  end

  def new
    @actor= Actor.new
  end

  def create
    @actor= Actor.new(actors_params)
    
    if(@actor.valid?)
      @actor.save
      redirect_to actors_path
    else
      render action: :new
    end
  end

  def edit
    @actor= Actor.find(params[:id])
  end

  def destroy
    @actor= Actor.find(params[:id])
    @actor.destroy
    redirect_to actors_path
  end

  def update
    @actor= Actor.find(params[:id])
    @actor.name= actors_params["name"]

    @actor.save

    redirect_to actor_path
  end

  def show
    @actor= Actor.find(params[:id])
    @movie_actors= @actor.movie_actors
  end

  def actors_params
    puts params.require(:actor).permit(:name)
    params.require(:actor).permit(:name)
  end
end