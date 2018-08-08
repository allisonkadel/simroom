class User < ApplicationRecord
    has_many :trainings
    has_many :equipment, :through => :trainings

    has_secure_password

    validates :email, :uniqueness => true
end
