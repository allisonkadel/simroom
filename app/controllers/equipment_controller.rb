class EquipmentController < ApplicationController
    def index
        @equipment_index = Equipment.all
    end

    def new
        @equipment = Equipment.new
        @equipment.reports.build
    end

    def create
        raise params.inspect
    end
end
