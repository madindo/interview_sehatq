class DoctorsController < ApplicationController

  # GET /doctors
  def index
    @doctors = Doctor.all
    render json: @doctors, status: :ok
  end

  # GET /doctors/schedules
  def schedules
    @doctors = Doctor.all.to_json(:include => :schedules)
    render json: @doctors, status: :ok
  end

  # POST /doctors
  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: @doctor, status: :created
    else
      render json: { errors: @doctor.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private
  
  def doctor_params
    params.permit(
      :name, :title, :email, :phone, :address, :gender, :about
    )
  end
end
