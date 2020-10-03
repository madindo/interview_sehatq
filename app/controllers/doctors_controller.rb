class DoctorsController < ApplicationController

  # GET /doctors
  def index
    @doctors = Doctor.all
    render json: @doctors, status: :ok
  end

  def schedules
    @doctors = Doctor.all.to_json(:include => :schedules)
    render json: @doctors, status: :ok
  end

end
