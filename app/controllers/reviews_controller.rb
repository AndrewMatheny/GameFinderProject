class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def show
        @review = find_review
        @game = @review.game
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        if @review.valid?
            @review.save
            redirect_to @review
        else
            render :new
        end
    end

    def edit
        find_review
    end

    def update
        find_review
        if @review.update(review_params)
            redirect_to @review
        else
            render :edit
        end
    end

    private

    def review_params
        params.require(:review).permit(:score, :text, :user_id, :game_id, :snippet)
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
