class GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games, status: 200
  end
  
  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  private

    def game_params
      params.require(:game).permit(:title)
    end
end
