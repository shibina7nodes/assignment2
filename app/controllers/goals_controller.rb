class GoalsController < ApplicationController
	

	def new
		@goal = Goal.new
	end

	# def relocate
 #       @goal = Goal.new
 #    end

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
  	@goal = Goal.new(goal_params)
    respond_to do |format|
      if @goal.save
        format.html { redirect_to "/new", notice: 'goal was successfully created.' }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new}
        format.json { render json: @goal.errors, status: 'login failed' }
      end
    end
    end

	def goal_params
		params.require(:goal).permit(:goals, :start_date, :last_date)
	end
end
