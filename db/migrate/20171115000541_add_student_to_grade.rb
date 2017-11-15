class AddStudentToGrade < ActiveRecord::Migration[5.1]
  def change
    add_reference :grades, :student, foreign_key: true
  end
end
