class EquipmentController < ApplicationController
    def index
        @equipment_index = Equipment.all
    end

    def new
        @equipment = Equipment.new
    end
end
