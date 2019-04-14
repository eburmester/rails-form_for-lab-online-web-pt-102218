class StudentsController < ApplicationController
   def new 
    @student = Students.new
  end
  
  def show 
    @students = Student.find(params[:id])
  end 
  
  def create 
    @student = Students.create(params)
    @student.save 
    redirect_to students_path(@student)
  end
  
  def edit 
  end
  
  def update 
  end 
end