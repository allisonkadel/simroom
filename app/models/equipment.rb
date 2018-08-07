class Equipment < ApplicationRecord
    has_many :trainings
    has_many :users, :through => :trainings
    has_many :components
end
