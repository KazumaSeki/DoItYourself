class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]
  before_action :authenticate_user!, except: %i[index]

  def index
    @users = User.all
    @users = User.order(created_at: :desc)
  end

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'ユーザー情報更新に成功しました'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit % i(username(email(profile(profile_image))))
  end
end
