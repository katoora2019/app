class EnrollmentsController < ApplicationController
  
  def index
  end
  
  def new
    enrollement = Enrollment.new
  end

  def create
    @enrollment = Enrollment.create(params.require(:enrollment).permit(:course_id, :student_id))
    redirect_to student_path(@enrollment.student)
  end

  def destroy
    #byebug
    @enrollment = Enrollment.find(params)[:id]
    @student = @enrollment.Student
    @enrollment.destroy
    redirect_to Student_path(@student)
  
  end
end
