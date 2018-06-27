class StudentsController < ApplicationController
	def index
		@students = Student.all	
	end

	def create
		@student = Student.create(student_params)	

		redirect_to students_path
  	end

	def new
		@events = EventsStudent.all
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
		@events = Event.all
	end

	def show
		# This is Step One, of a long, and dark road.
		@student = Student.find(params[:id])
		@events = Event.all
		@events_student = EventsStudent.new
	end

	def update
		student = Student.find(params[:id])
		student.update(student_params)

		redirect_to students_path
	end

	def destroy
		Student.destroy(params[:id])

		redirect_to students_path	
	end

	private

	def student_params
		params.require(:student).permit(:first_name, :last_name, :linkedin, :email, :portfolio, :avatar, :event_id)
		
	end

end
