class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @game = Game.find(params[:game_id])
    comment = current_user.comments.new(comment_params)
    comment.game_id = @game.id
    comment.save
  end

  def destroy
    @game = Game.find(params[:game_id])
    Comment.find_by(id: params[:id], game_id: params[:game_id]).destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end

end
