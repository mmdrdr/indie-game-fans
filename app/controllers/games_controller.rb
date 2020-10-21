class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    @game.save
    redirect_to games_path
  end

  def index
    @games = Game.all
  end

  private
  def game_params
    params.require(:game).permit(:title, :introduction)
  end

end
