class UsersController < ApplicationController
  #投稿一覧ページ
  def index
    @users = User.all
  end

  #新規投稿ページ
  def new
    @user = User.new
  end

  #新規作成処理
  def create
    User.create(user_params)
    redirect_to action: :index
  end

  #編集ページ
  def edit
    @user = User.find(params[:id])
  end

  #編集処理
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to action: :index
  end

  #削除処理
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to action: :index
  end

  #制限
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
