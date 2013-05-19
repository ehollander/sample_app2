class SessionsController < ApplicationController
  def new
  end

  def create
	  user = User.find_by_name(params[:session][:name]) #when changing to username add ".downcase"
	  if user && user.authenticate(params[:session][:password])
	    # Sign the user in and redirect to the user's show page.
	  else
	    # Create an error message and re-render the signin form.
	  end
  end

  def destroy
  end
end
