class ComponentsController < ApplicationController
    def index
        @equipment = Equipment.find(params[:equipment_id])
        @components = @equipment.components
    end
end