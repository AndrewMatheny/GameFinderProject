class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        if @genre.valid?
            @genre.save
            redirect_to new_game_path
        else
            render :new
        end
    end

    private
    
    def genre_params
        params.require(:genre).permit(:name)
    end
end
