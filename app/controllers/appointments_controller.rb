class AppointmentsController < ApplicationController
  def index
  	@appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
  	@appointment = Appointment.new
  end

  def edit
  	@appointment = Appointment.find(params[:id])
  end

  def create 
  	@appointment = Appointment.new(appointment_params)
  	if @appointment.save
  	redirect_to
  	else
  		render :new 
  end

  def update
  	@appointment = Appointment.find(params[:id])
  	if @appointment.update_attributes(appointment_params)
  		@appointment.save
  		redirect_to
  	else
  		render
  	end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    @appointment.save
    redirect_to appointments_path 
  end

  protected

  def appointment_params
    params.require(:appointment).permit(:date,:time,:notes)
  end

end
