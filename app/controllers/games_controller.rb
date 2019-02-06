class GamesController < ApplicationController
  
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
