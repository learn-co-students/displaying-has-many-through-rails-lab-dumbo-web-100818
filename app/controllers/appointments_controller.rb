class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    # @patients = Patient.all
    # @doctors = Doctor.all
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
  end
end
