class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = current_user.games.new(game_params)
    @game.save
    redirect_to games_path
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:user_id, :title, :introduction, :image_id)
  end

end
