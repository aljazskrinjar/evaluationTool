class GradesController < ApplicationController
  before_action :set_student


  def create
    grade_params = params.require(:grade).permit(:remark,:value,:date, :user_id)
    @grade=@student.grades.create(grade_params)

    if @grade.save!
       redirect_to group_student_path(@student.group.id,@student.id)

    end

  end

  def edit
    @grade = Grade.find(params[:id])
  end

  def update
    @grade = Grade.find(params[:id])

    grade_params = params.require(:grade).permit(:remark, :value, :date)

    if @grade.update_attributes(grade_params)
      redirect_to @grade
    else
      render 'edit'
    end
  end


  private

  def set_student
    @student = Student.find(params[:student_id])
  end
end
