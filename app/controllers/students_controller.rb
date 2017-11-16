class StudentsController < ApplicationController
  before_action :set_group
  def show
    @student = Student.find(params[:id])
    @group = @student.group
    @grades = @student.grades
  end

  def create
    student_params = params.require(:student).permit(:name,:surname,:photo)
    @student=@group.students.create(student_params)

    if @group.save
       redirect_to group_path(@group.id)

    end

  end

  def destroy
   @student = Student.find(params[:id])

   @student.destroy

   redirect_to groups_path
 end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end
end
