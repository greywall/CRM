class CallsController < ApplicationController
  def index
  	@calls = Call.all
  end

  def show
    @call = Call.find(params[:id])
  end

  def new
  	@call = Call.new
  end

  def edit
  	@call = Call.find(params[:id])
  end

  def create 
  	@call = Call.new(call_params)
  	if @call.save
      redirect_to calls_path
  	else
  		render :new 
  end

  def update
  	@call = Call.find(params[:id])
  	if @call.update_attributes(call_params)
  		@call.save
  		redirect_to
  	else
  		render
  	end
  end

  def destroy
    @call = Call.find(params[:id])
    @call.destroy
    @call.save
    redirect_to calls_path 
  end

  protected

  def call_params
    params.require(:call).permit(:date,:time,:notes)
  end

end
