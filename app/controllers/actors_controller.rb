class ActorsController < ApplicationController
	  before_action :find_actor, only: [:show, :edit, :update, :destroy]
    before_action :admin_authorize, except: [:index, :show, :search]

  def index
  	@actors = Actor.all.order(:surname)
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
      if @actor.save
        redirect_to actor_path(@actor)
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
      if @actor.update(actor_params)
        redirect_to actor_path(@actor)
      else
        render 'edit'
      end
  end

  def destroy
    @actor.destroy
    redirect_to actors_path
  end

   def search
    if params[:search].blank?
      @actors = Actor.all.order(:surname)
    else
      @actors = Actor.search(params)
    end
  end

private

  def actor_params
    params.require(:actor).permit(:name, :surname, :birthday, :description, :country, :movies, :user_id)
  end

  def find_actor
    @actor = Actor.find(params[:id])
  end


end
