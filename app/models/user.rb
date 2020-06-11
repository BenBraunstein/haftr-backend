class User < ApplicationRecord
    has_one :alumni
    validates :email, uniqueness: true
    validates :email, presence: true
    has_secure_password
end
