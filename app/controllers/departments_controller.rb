class DepartmentsController < ApplicationController
    def index
        @departments = Department.all
    end

    def show
        @department = get_department
    end
    
    private

    def get_department
        Department.find(params[:id])
    end
end
