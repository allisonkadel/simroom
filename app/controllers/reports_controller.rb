class ReportsController < ApplicationController

    def index
        @equipment = Equipment.find(params[:equipment_id])
        @reports = @equipment.reports
    end

    def new
        @equipment = Equipment.find(params[:equipment_id])
        @report = Report.new
    end
    
end
