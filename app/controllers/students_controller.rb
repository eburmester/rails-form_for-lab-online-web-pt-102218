class StudentsController < ApplicationController
  def index
    @students = Students.all 
  end
  
  def new 
    @student = Students.new
  end
  
  def show 
    @students = Student.find(params[:id])
  end 
  
  def create 
    @student = Students.create(params)
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save 
    redirect_to students_path(@student)
  end
  
  def edit 
  end
  
  def update 
  end 
end