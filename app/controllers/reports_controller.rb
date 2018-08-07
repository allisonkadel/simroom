class ReportsController < ApplicationController

    def index
        @equipment = Equipment.find(params[:equipment_id])
        @reports = @equipment.reports
    end

end
