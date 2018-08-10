class Training < ApplicationRecord
    belongs_to :user
    belongs_to :equipment

    validates :name, :presence => true
    validates :name, :uniqueness => true
    validates :description, :presence => true
    validates :date, :presence => true
    validates :simroom, :presence => true

    # add AR scope method ------ need to convert date to epoch time to compare!!!
    scope :past_trainings, -> { where("date < ?", DateTime.now.to_time.to_i
    )}
end
