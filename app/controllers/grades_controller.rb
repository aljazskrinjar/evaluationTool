class GradesController < ApplicationController
  before_action :set_student
  before_action :authenticate_user!

  def show
    @group=@student.group
    @grade = Grade.find(params[:id])
  end

  def edit
    @group=@student.group
    @grade = Grade.find(params[:id])
  end

  def update
    @grade = Grade.find(params[:id])
    @group=@student.group
    grade_params = params.require(:grade).permit(:value,:date,:remark)

    if @grade.update_attributes(grade_params)
      redirect_to group_student_path(@group.id, @student.id)
    else
      render 'edit'
    end
  end


  def create
    grade_params = params.require(:grade).permit(:remark,:value,:date, :user_id)
    @grade=@student.grades.create(grade_params)
    if params[:commit] == 'Save'
      if @grade.save!
         redirect_to group_student_path(@student.group.id,@student.id)

      end
    else
      group= @student.group
      students=group.students

      index_of_student=students.index(@student)

      if index_of_student == students.length-1
        new_student=students[0]
      else
        new_student=students[index_of_student + 1]
      end


      if @grade.save!
         redirect_to group_student_path(@student.group.id,new_student.id)
      end
    end

  end



  private

  def set_student
    @student = Student.find(params[:student_id])
  end
end
