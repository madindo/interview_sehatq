class HospitalsController < ApplicationController
  # GET /doctors
  def index
    @hospitals = Hospital.all
    render json: @hospitals, status: :ok
  end
end
