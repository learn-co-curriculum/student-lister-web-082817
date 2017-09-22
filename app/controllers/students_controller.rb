class StudentsController < ApplicationController

  def show
    @student = Student.find_by(id: params[:id])
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params)
    redirect_to(student)
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    student = Student.find_by(id: params[:id])
    student.update(student_params)

    redirect_to student
  end


  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    redirect_to students_path
  end



  private

  def student_params
    params.require(:student).permit(:name, :email, :dob)
  end

end
