class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
 
  def new 
    @student = Students.new
  end
  
  def show 
    @students = Student.all 
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