class EquipmentController < ApplicationController
    def index
        @equipment_index = Equipment.all
    end
end
