class TrainingsController < ApplicationController

    def index
        @trainings = Training.all
    end

    def new
        @training = Training.new
    end

end
