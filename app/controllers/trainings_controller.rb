class TrainingsController < ApplicationController

    def index
        @trainings = Training.all
    end

    def new
        @training = Training.new
    end

    def create
        @training = Training.new(training_params)
        if @training.save
            redirect_to training_path(@training)
        else
            render :new
        end
    end

end
