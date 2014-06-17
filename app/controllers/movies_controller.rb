class MoviesController < ApplicationController
	def index
    @movies= Movie.all
  end

  def new
    @movie= Movie.new
    @movie.actors.build
    @actors= Actor.all
  end

  def create
    @movie= Movie.new(movies_params)
    
    if(@movie.valid?)
      @movie.save
      redirect_to movies_path
    else
      render action: :new
    end
  end

  def edit
    @movie= Movie.find(params[:id])
  end

  def destroy
    @movie= Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  def update
    @movie= Movie.find(params[:id])
    @movie.name= movies_params["name"]

    @movie.save

    redirect_to movie_path
  end

  def show
    @movie= Movie.find(params[:id])
    @movie_actors= @movie.movie_actors
  end

  def movies_params
    puts params.require(:movie).permit(:name)
    params.require(:movie).permit(:name)
  end
end