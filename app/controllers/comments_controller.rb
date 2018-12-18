class CommentsController < ApplicationController
 before_action :find_movie
 before_action :authorize, only: [:create] 
 before_action :admin_authorize, only: [:destroy] 

  def create
    # @movie = Movie.find(params[:movie_id])
    @comment = Comment.new(movie_id: @movie.id)
    @comment.attributes = comment_params

    if @comment.save
      redirect_to movie_path(@movie), notice:
      "You created comment"
    else
      render "movies/show", alert:
      "You don't created comment"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to movie_path(params[:movie_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body, :rating, :movie_id)
  end

  def find_movie
    @movie = Movie.find(params[:movie_id])
  end

end
