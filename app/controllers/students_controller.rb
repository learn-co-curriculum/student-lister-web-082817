class StudentsController < ApplicationController

  def show
    @student = Student.find_by(id: params[:id])
  end

  def index
    @students = Student.all
  end

  def new
  end

  def create
    student = Student.new(name: params[:name], email: params[:email], dob: params[:dob])
    student.save

    redirect_to student
  end

end
