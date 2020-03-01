class CoursesController < ApplicationController
  def index
    @course = Course.all
  end

  def new
   @course = Course.new
  
  end

  def edit
    @course = Course.new
  end
      

  def create
    @course = Course.create(params.require(:course).permit(:name, :age))
    if @course.valid?
      redirect_to new_course_path
        
    else 
       flash[:errors] = @course.errors.full_messages
       redirect_to new_course_path
    end
  end

  #def show
    #  @course = Course.find(params[:id])
  #end
  def set_course
    @course = Course.find(params[:course_id])
  end
  def course_name
    @course = Course.find (params[:course_name])
  end
    
  end

  def edit
    @course = Course.find(params[:id])
    
  end

  def update
    
    @course = Course.find(params[:id])
    @course.update(params.require(:Course).permit(:name, :age))
    @course.update
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end


    

