class SearchController < ApplicationController

 def index
    if params[:search].blank?
      @movies = Movie.all.order(:name)
      @actors = Actor.all
      @directors = Director.all
      @genres = Genre.all
    else
      @movies = Movie.search(params)
      @actors = Actor.search(params)
      @directors = Director.search(params)
      @genre = Genre.search(params)
    end
  end

end
