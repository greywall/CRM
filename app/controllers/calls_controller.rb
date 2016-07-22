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
    contact = Contact.find_by(params[:id])
  	@call = Call.new(call_params)
  	if @call.save
      @call[:contact_id] =contact.id 
      redirect_to calls_path
  	else
  		render :new
    end
  end

  def update
  	@call = Call.find(params[:id])
  	if @call.update_attributes(call_params)
  		@call.save
  		redirect_to call_path(@call)
  	else
  		render :edit
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
