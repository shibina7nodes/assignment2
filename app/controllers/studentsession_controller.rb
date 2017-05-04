class StudentSessionController < ApplicationController

  def login
    @user = Student.new
  end

  def create
    if @student = login(params[:username], params[:password])
      redirect_back_or_to(:student, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:student, notice: 'Logged out!')
  end
end
end
