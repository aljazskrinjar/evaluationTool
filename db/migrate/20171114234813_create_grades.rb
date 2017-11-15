class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.text :remark
      t.integer :value
      t.date :date

      t.timestamps
    end
  end
end
