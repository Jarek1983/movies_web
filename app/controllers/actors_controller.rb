class ActorsController < ApplicationController
	  before_action :find_actor, only: [:show, :edit, :update, :destroy]
    before_action :admin_authorize, except: [:index, :show]

  def index
  	@actors = Actor.all.order(:name)
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

private

  def actor_params
    params.require(:actor).permit(:name, :birthday, :description, :country, :user_id, :photo)
  end

  def find_actor
    @actor = Actor.find(params[:id])
  end


end
