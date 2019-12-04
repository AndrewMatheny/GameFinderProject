class Game < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :game_genres
    has_many :genres, through: :game_genres
    #accepts_nested_attributes_for :genres
end
