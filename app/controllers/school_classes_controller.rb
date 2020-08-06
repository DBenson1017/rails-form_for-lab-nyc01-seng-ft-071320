class SchoolClasses < ApplicationController 
    def new 
        @school_class = SchoolClass.new
    end 
    
    def show 
        @school_class = SchoolClass.find(params[:id])
    end 
    
    def create
        @school_class = SchoolClass.create(student_params)
    end 
    
    def edit 
        @school_class = Student.find(params[:id]) 
    end 
    
    def update
        @school_class = SchoolClass.find(parmas[:id])
        @school_class.update(student_params)
        redirect_to student_path(@student) 
    end 
end 