class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    @group = @student.group
    @grades = @student.grades


  end
end
