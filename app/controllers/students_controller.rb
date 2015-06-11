class StudentsController < ApplicationController
  def new
        @student = Student.new

  end

  def create
     @student = Student.new(user_params)
    if @student.save 
      redirect_to @students, notice:'Student was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end
  def user_params
    params.require(:student).permit(:StudentNumber, :FirstName, :LastName, :Email, :Password,:CourseID)
  end
end
