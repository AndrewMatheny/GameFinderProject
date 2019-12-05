class User < ApplicationRecord
    has_many :reviews
    has_many :games, through: :reviews

    validates :name, presence: true
    validates :age, presence: true
    validates :bio, presence: true
    validates :name, uniqueness: true
end
