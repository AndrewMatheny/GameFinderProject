class Review < ApplicationRecord
    belongs_to :game
    belongs_to :user

    validates :score, presence: true
    validates :text, presence: true
    validates :snippet, presence: true
end
