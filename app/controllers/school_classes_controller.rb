class SchoolClassesController < ApplicationController
  def index 
    @school_class = SchoolClasses.all
  
  def new 
    @school_class = SchoolClasses.new 
  end
  
  def show 
    @school_classes = SchoolClasses.find(params[:id])
  end 
  
  def create 
    @school_class = SchoolClasses.new
    @school_class.title = params[:title]
    @school_class.description = params[:description]
    @school_class.save 
    redirect_to school_class_path(@school_class)
  end
  
  def edit 
    @school_classes = SchoolClasses.find(params[:id])
  end
  
  def update 
    @school_class = SchoolClasses.find(params[:id])
	  @school_class.update(params.require(:school_class).permit(:title, :description))
	  redirect_to post_path(@school_class)
  end 
end
