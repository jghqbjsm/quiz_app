class SessionsController < ApplicationController
 
  def new
  end

  def create
     user = User.find_by(studentID: params[:session][:studentID].downcase)
    
    #     if user && user.authenticate(params[:session][:password])
      
    #  # Log the user in and redirect to the user's show page.
    #  log_in user
    #s  redirect_to user
    # else
    #  # Create an error message.
    #  flash[:danger] = 'Invalid email/password combination' # Not quite right!

    #  render 'new' 
    
  end

  def destroy
  end
  
end

