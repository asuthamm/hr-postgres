class EmployeesController < ApplicationController
    def index
        emps = Employee.all
        @employees = emps.sort_by(&:name)
    end
    def show
        @employee = get_employee
    end

    def new
        @employee = Employee.new
    end
    def create
        # byebug
        employee = Employee.create(employee_params)
        # byebug
        redirect_to employees_path
    end

    def edit
        @employee = get_employee
    end
    def update
        employee = get_employee
        employee.update(employee_params)
        # byebug
        redirect_to employee_path
    end

    def destroy
        employee = get_employee
        employee.destroy
        redirect_to employees_path
    end

    private

    def get_employee
        Employee.find(params[:id])
    end

    def employee_params
        # byebug
        params.require(:employee).permit(:name, :photo, :title_id, :department_id, :location_id, :manager_id)
    end
end
