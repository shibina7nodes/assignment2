class StudentsController < ApplicationController
  
   def login
     @student=Student.new
   end
  

	def form
		@student=Student.new

    	puts "form"
  	end


  # 	def listing
		# @student=Student.all
  #   	puts "listing"
  # 	end

 #  def details
 #  	@student=Student.find(params[:id])
	# end

  def valid
       user = Student.find_by_username(params[:student][:username])
       password=Student.find_by_password(params[:student][:password])
     if user && password
          session[:current_user]=user
           redirect_to "/new"
          else
           redirect_to "/login"
      end
  end

  	# def update
   #  	respond_to do |format|
   #    		if @user.update(user_params)
   #        	format.html { redirect_to @article, notice: 'Article was successfully updated.' }
   #        	format.json { render :show, status: :ok, location: @article }
   #    		else
   #      	  format.html { render :edit }
   #      	  format.json { render json: @article.errors, status: :unprocessable_entity }
   #    		end
   #  	end
  	# end
  
  def create
  	@student = Student.new(student_params)
    respond_to do |format|
      if @student.save
        format.html { redirect_to "/form", notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :form}
        format.json { render json: @student.errors, status: 'login failed' }
      end
    end
    end
  


   def student_params
    params.require(:student).permit(:username, :password, :cpassword, :email)
   end

end