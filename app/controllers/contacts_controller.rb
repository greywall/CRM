class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:email,:firstname,:lastname])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to contact_path(contact)
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:email,:first_name,:last_name])
  end

  def update
    @contact = Contact.find(params[:email,:first_name,:last_name])
    if @contact.update_attributes(contact_params)
      redirect_to contact_path(contact)
    else
      render :edit
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    # redirect_to contact
  end

  protected

  def contact_params
    params.require(:contact).permit(:first_name,:last_name,:email,:phone_number,:company)
  end

end
