class SessionsController < ApplicationController
 
  def new
  end

  def create
    student = Student.find_by(Email: params[:session][:Email])
    if student && student.Password==(params[:session][:Password]) 
      # Log the student in and redirect to the student's show page.
      log_in student
      redirect_to student
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'

      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end

