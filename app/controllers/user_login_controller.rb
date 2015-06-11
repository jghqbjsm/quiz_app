class UserLoginController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  
  def new
    @student = Students.new
    
  end

  def login
    @student = Students.new(params[:student])
    if @student.save 
      redirect_to @students, notice:'Student was successfully created.'
    else
      render action: 'new'
    end
  end
  def show
    @student = Students.find(params[:id])
  end
  

  
end

