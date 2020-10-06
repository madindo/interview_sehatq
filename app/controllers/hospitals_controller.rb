class HospitalsController < ApplicationController
  # GET /doctors
  def index
    render json: Hospital.all, status: :ok
  end

  # POST /hospitals
  def create
    @hospital = Hospital.new(hospital_params)
    if @hospital.save
      render json: @hospital, status: :created
    else
      render json: { errors: @hospital.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def hospital_params
    params.permit(
      :name, :address
    )
  end

end
