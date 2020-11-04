class UsersController < ApplicationController

  def index
    @games = Game.all.order(created_at: :DESC)
  end

  def show
    @user = User.find(params[:id])
    @users = @user.following_user
    @games = Game.where(user_id: @user.id).order(created_at: :DESC)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end

end
