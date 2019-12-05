class GamesController < ApplicationController
    def index
        @games = Game.all
    end
    def show
        @game = Game.find(params[:id])
        @reviews = Review.where(:game_id => @game.id)
        #@game_genre = GameGenre.where(:game_id => @game.id && :genre_id => )
    end

    def new
        @game = Game.new
        #@gamegenre = GameGenre.new(game_id: 1, genre_id: 1)
    end

    def create
        @game = Game.new(game_params)
        @game.save
        # ids = params[:game][:genre_ids]

        # clean_ids = ids.reject { |e| e.to_s.empty? }
        # clean_ids.each do |id|
        #     GameGenre.create(game_id: @game.id, genre_id: id)
        # end
        
        #@gamegenre.save

        #byebug
        redirect_to @game
    end

    private

    def game_params
        params.require(:game).permit(:name, :developer, :release_date, genre_ids: [])
    end
end
