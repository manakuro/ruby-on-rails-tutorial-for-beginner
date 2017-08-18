class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_url(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = destroy
      redirect_to users_url
  end

  before_action :set_user, only: %w(show edit update destroy)
  private 
    def set_user
      @user = User.find(params[:id])
    end

  private
  def user_params
    # prevent from injecting wroing parameter
    params.require(:user).permit(:name, :department)
  end
end
