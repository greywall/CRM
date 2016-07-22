class SessionsController < ApplicationController

	# def new
 #     user = User.find_by(email: params[:email])

 #    if user && user.authenticate(params[:password])
 #      session[:user_id] = user.id
 #      render options_index_path
 #    else
 #      # render :new
 #      redirect_to contacts_path
 #    end
 #  end

  def new
    
  end

  def destroy
    session[:user_id] = nil
    redirect_to contacts_path
  end


  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to options_path
    else
      render :new
      # redirect_to contacts_path
    end
  end

end
