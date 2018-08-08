class EquipmentController < ApplicationController
    def index
        @equipment_index = Equipment.all
    end

    def new
        @equipment = Equipment.new
        @equipment.reports.build
    end

    def create
        @equipment = Equipment.new(equipment_params)
        if @equipment.save
            redirect_to equipment_reports_path(@equipment)
        else
            render :new
        end
    end
end
