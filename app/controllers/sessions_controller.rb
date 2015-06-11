class SessionsController < ApplicationController
 
  def new
  end

  def create
    student = Student.find_by(params[:session][:StudentNumber],params[:session][:Password])
    
    if student.nil?
      flash.now[:error]="Invalid user login"
      render :new
    else
      log_in(student)
      redirect_to student
    #  # Log the student in and redirect to the student's show page.
    #  log_in student
    #s  redirect_to student

    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end

