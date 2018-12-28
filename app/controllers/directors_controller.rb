class DirectorsController < ApplicationController
  before_action :set_director, only: [:show, :edit, :update, :destroy]
  before_action :admin_authorize, except: [:index, :show, :search]

  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
      if @director.save
        redirect_to director_path(@director)
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @director.update(director_params)
        redirect_to director_path(@director)
      else
        render 'edit'
      end
  end

  def show
  end

  def destroy
    @director.destroy
    redirect_to directors_path
  end

private
    
  def set_director
    @director = Director.find(params[:id])
  end

  def director_params
    params.require(:director).permit(:name)
  end
  
end
