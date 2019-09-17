class Api::EmployeesController < ApplicationController
  def index
    @employees = Employee.all

    render 'index.json.jb'
  end

  def create
    @employee = Employee.new(
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              hourly_wage: params[:hourly_wage]
                              )
    @employee.save
    render 'show.json.jb'
  end

  def show
    @employee = Employee.find(params[:id])
    render 'show.json.jb'
    
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.first_name = params[:first_name] || @employee.first_name
    @employee.last_name = params[:last_name] || @employee.last_name
    @employee.email = params[:email] || @employee.email
    @employee.hourly_wage = params[:hourly_wage] || @employee.hourly_wage

    @employee.save
    render 'show.json.jb'
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: {message: "Employee has been destroyed."}
    
  end

end
