class StudentsController < ApplicationController
  
  def login
    @student=Student.new
    end
  

	def form
		@student=Student.new

    	puts "form"
  	end


  	def listing
		@student=Student.all
    	puts "listing"
  	end

  def details
  	@student=Student.find(params[:id])
	end

  def valid
       user = Student.find_by_email(params[:student][:username])
       password=User.find_by_password(params[:student][:password])
     if user && password
           redirect_to "/relocate"
      end
  end

  	def update
    	respond_to do |format|
      		if @user.update(user_params)
          	format.html { redirect_to @article, notice: 'Article was successfully updated.' }
          	format.json { render :show, status: :ok, location: @article }
      		else
        	  format.html { render :edit }
        	  format.json { render json: @article.errors, status: :unprocessable_entity }
      		end
    	end
  	end
  
  def create
  	@student = Student.new(student_params)
		if @student.save
      redirect_to form_path 
    end
  end
  


   def student_params
    params.require(:student).permit(:username, :password, :cpassword, :email)
   end

end