class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @user = User.find(params[:id])
    # respond_to do |format|
      # format.html { render :show }
      render json: @user, status: 200 
    # end     
  end

  # def games
  #   @user = User.find(params[:id])
  #   render plain: @user.games
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: 201
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :gamertag, :games)
    end
end
