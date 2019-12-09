class Game < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :game_genres
    has_many :genres, through: :game_genres
    
    validates :name, presence: true
    validates :developer, presence: true
    validates :release_date, presence: true
    validates :name, uniqueness: true

end
