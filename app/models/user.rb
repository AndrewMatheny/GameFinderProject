class User < ApplicationRecord
    has_many :reviews
    has_many :games, through: :reviews

    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true



    has_secure_password
end
