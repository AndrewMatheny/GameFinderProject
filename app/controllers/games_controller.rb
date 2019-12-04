class GamesController < ApplicationController
    def show
        @game = Game.find(params[:id])
    end

    def new
        @game = Game.new
    end

    def create
        @game = Game.new(game_params)
        @game.save
        redirect_to @game
    end

    private

    def game_params
        params.require(:game).permit(:name, :developer, :release_date)
    end
end
