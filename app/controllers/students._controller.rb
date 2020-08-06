class StudentsController < ApplicationController 
def new 
    @student = Student.new
end 

def show 
    @student = Student.find(params[:id])
end 

def create
    @student = Student.create(student_params)
end 

def edit 
    @student = Student.find(params[:id]) 
end 

def update
    @student = Student.find(parmas[:id])
    @student.update(student_params)
    redirect_to student_path(@student) 
end 

end 