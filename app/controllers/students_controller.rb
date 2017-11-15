class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    @grades = @student.grades


  end
end
