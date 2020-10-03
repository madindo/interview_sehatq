class SchedulesController < ApplicationController


  # GET /schedules
  def index
    @schedules = Schedule.doctors
    render json: @schedules, status: :ok
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @checkSchedule = Schedule.where("doctor_id = ?", schedule_params[:doctor_id])
    
    if @schedule.save && @checkSchedule.count() <= 10
      render json: @schedule, status: :created
    else
      if @checkSchedule.count() >= 10
        render json: { errors: "A total of 10 users can book the same doctor." }, status: :unprocessable_entity
      else
        render json: @schedule.errors, status: :unprocessable_entity
      end
    end
  end

  private

    def schedule_params
      params.permit(:doctor_id, :user_id, :start, :end )
    end
  
end
