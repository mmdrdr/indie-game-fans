class GamesController < ApplicationController

  def new
    @game = Game.new
    @game.game_images.build
  end

  def create
    @game = current_user.games.new(game_params)
    if @game.save
      redirect_to user_path(@game.user)
    else
      render :new
    end
  end

  def index
    if params[:id]
      @games = Genre.find(params[:id]).games
      @genres = Genre.all
    else
      @games = Game.all.order(created_at: :DESC)
      @genres = Genre.all
    end
  end

  def show
    @game = Game.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:user_id, :title, :introduction, game_images_images: [], genre_ids: [])
  end

end
