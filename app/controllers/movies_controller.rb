class MoviesController < ApplicationController
    before_action :find_movie, only: [:show, :edit, :update, :destroy]
  def index
    @movies = Movie.all.order(:name)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
      if @movie.save
        redirect_to movie_path(@movie)
      else
        render 'new'
      end
  end

  def show
    # @movie = Movie.find(params[:id])
    # find_movie
  end

  def edit
    # @movie = Movie.find(params[:id])
    # find_movie
  end

  def update
   # @movie = Movie.find(params[:id])
   # find_movie
      if @movie.update(movie_params)
        redirect_to movie_path(@movie)
      else
        render 'edit'
      end
  end

  def destroy
   # @movie = Movie.find(params[:id])
   # find_movie
    @movie.destroy
    redirect_to movies_path
  end

private

  def movie_params
    params.require(:movie).permit(:name, :premiere_date,:length, :description, :genre, :director, :scenarist, :country)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

end
