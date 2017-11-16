class GradesController < ApplicationController
  before_action :set_student


  def create
    grade_params = params.require(:grade).permit(:remark,:value,:date, :user_id)
    @grade=@student.grades.create(grade_params)
    if params[:commit] == 'Save'
      if @grade.save!
         redirect_to group_student_path(@student.group.id,@student.id)

      end
    else
      if @grade.save!
         redirect_to groups_path
      end
    end

  end



  private

  def set_student
    @student = Student.find(params[:student_id])
  end
end
