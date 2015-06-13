class StudentsController < ApplicationController
  def new
        @student = Student.new

  end

  def create
     @student = Student.new(student_params)
     
    if @student.save 
      log_in @student
      redirect_to @student, notice:'Student was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
    
  end
  def student_params
    params.require(:student).permit(:StudentNumber, :FirstName, :LastName, :Email, :Password,:CourseID)
  end
end
