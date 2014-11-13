class WorkoutsController < ApplicationController
before_action :authenticate_user!
	def new
		@workout = current_user.workouts.new
	end

	def create
		@workout = current_user.workouts.new(workout_params)

		if @workout.save
			redirect_to @workout
		else
			render 'new'
		end
		
	end

	def show
		@workout = current_user.workouts.find(params[:id])
	end

	def index 
		@workouts = current_user.workouts.all
		@this_day = params[:month] ? Date.parse(params[:month]) : Date.today
	end

	def edit
		@workout = current_user.workouts.find(params[:id])
	end

	def update
		@workout = current_user.workouts.find(params[:id])

		if @workout.update(workout_params)
			redirect_to @workout
		else
			render 'edit'
		end
	end

	def destroy
		@workout = current_user.workouts.find(params[:id])

		@workout.destroy
		redirect_to workouts_path
	end

	private
	def workout_params
		params.require(:workout).permit(:workout_name, :date, :whats_done, :notes)
	end
end
