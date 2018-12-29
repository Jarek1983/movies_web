class ScreenwritersController < ApplicationController
  before_action :set_screenwriter, only: [:show, :edit, :update, :destroy]
  before_action :admin_authorize, except: [:index, :show]

  def index
    @screenwriters = Screenwriter.all
  end

  def show
  end

  def new
    @screenwriter = Screenwriter.new
  end

  def create
    @screenwriter = Screenwriter.new(screenwriter_params)
      if @screenwriter.save
        redirect_to screenwriter_path(@screenwriter)
      else
        render 'new'
      end
  end

  def edit
  end

  def update
      if @screenwriter.update(screenwriter_params)
        redirect_to screenwriter_path(@screenwriter)
      else
        render 'edit'
      end
  end

  def destroy
    @screenwriter.destroy
    redirect_to screenwriters_path
  end

private

  def set_screenwriter
    @screenwriter = Screenwriter.find(params[:id])
  end

  def screenwriter_params
      params.require(:screenwriter).permit(:name, :description)
  end

end
