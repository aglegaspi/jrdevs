class StudentsController < ApplicationController
	def index
		@students = Student.all	
	end

	def create
		@student = Student.create(student_params)

		redirect_to students_path
  	end

	def new
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
	end

	def show
		@student = Student.find(params[:id])
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
		params.require(:student).permit(:first_name, :last_name, :linkedin, :email, :portfolio, :avatar)
		
	end


end
