class User < ApplicationRecord
    has_many :trainings
    has_many :equipment, :through => :trainings
end
