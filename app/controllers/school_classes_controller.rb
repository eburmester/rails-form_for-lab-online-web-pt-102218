class SchoolClassesController < ApplicationController
  def new 
    @school_class = SchoolClass.new 
  end
  
  def show 
    @school_classes = SchoolClass.all 
  end 
  
  def create 
    @school_class = SchoolClass.create(params)
    @school_class.save 
    redirect_to school_class_path(@school_class)
  end
  
  def edit 
  end
  
  def update 
  end 
  
end