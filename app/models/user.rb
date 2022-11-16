class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :products, through: :reviews

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

end
