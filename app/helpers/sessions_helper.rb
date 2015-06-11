module SessionsHelper
   # Logs in the given user.
  def log_in(student)
    session[:StudentNumber] = StudentNumber
    session[:Password] = Password
  end

  # Returns the current logged-in user (if any).
  def current_student
    @current_student ||= Student.find_by(id: session[:student_id])
  end
  def log_out
    session[:student.id] = nil
    redirect_to login_url, alert:"Sucessfully log out"
  end
  
end