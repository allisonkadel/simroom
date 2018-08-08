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

    def show
        @training = Training.find(params[:id])
    end

    def edit
        @training = Training.find(params[:id])
        if @training.user_id != current_user.id
            redirect_to training_path(@training)
        end
    end

    def update
        @training = Training.find(params[:id])
        #consider wrapping the below conditional in a method
        if @training.user_id == current_user.id
            if @training.update(training_params)
                redirect_to training_path(@training)
            else
                render :edit
            end
        else
            redirect_to training_path(@training)
        end
    end

    private

        def training_params
            params.require(:training).permit(
                :name,
                :description,
                :date,
                :simroom,
                :equipment_id,
                :user_id
            )
        end

end
