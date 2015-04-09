class CoursesController < ApplicationController

	def index
		 @courses = Course.all
		 if params[:course_name].present?
		 	@courses=@courses.where("course_name like?","%#{params[:course_name]}%")
		 end
		 if params[:course_teacher].present?
		 	@courses=@courses.where("course_teacher like?","%#{params[:course_teacher]}%")
		 end
		 if params[:course_time].present?
		 	@courses=@courses.where("course_time like?","%#{params[:course_time]}%")
		 end
	end

	def new
		@course = Course.new
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
  		@course = Course.find(params[:id])
  		@course.update_attributes(course_params)
  		redirect_to courses_path
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		redirect_to courses_path
	end

	def create
		Course.create(course_params)
  		redirect_to courses_path
	end

	private

	def course_params
  		params.require(:course).permit(:course_name, :course_teacher, :course_time, :course_place, :course_credit)
	end

end
