class Training < ApplicationRecord
    belongs_to :user
    belongs_to :equipment

    validates :name, :presence => true
    valiates :name, uniqueness => true
    validates :description, :presence => true
    validates :date, :presence => true
    validates :simroom, :presence => true
end
