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
        @review.save
        redirect_to @review
    end

    def edit
        find_review
    end

    def update
        @review = Review.update(review_params)
        @review.save
        redirect_to @review
    end

    private

    def review_params
        params.require(:review).permit(:score, :text, :user_id, :game_id)
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
