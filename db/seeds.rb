Group.destroy_all
Student.destroy_all
User.destroy_all
Grade.destroy_all

group1=Group.create!(name: "Group1",start_date:Date.today,end_date:Date.today)
group2=Group.create!(name: "Group2",start_date:Date.today,end_date:Date.today)
group3=Group.create!(name: "Group3",start_date:Date.today,end_date:Date.today)

student1=Student.create!(name: "student1",surname: "student1", group: group1)
student2=Student.create!(name: "student2",surname: "student2", group: group1)
student3=Student.create!(name: "student3",surname: "student3", group: group1)

arno = User.create!(
  email: 'arno@codaisseur.com',
  password: '123456'
)

grade3=Grade.create!(remark: "",value: 0, date: Date.today-2, student: student1, user: arno)
grade1=Grade.create!(remark: "",value: 2, date: Date.today, student: student1, user: arno)
grade2=Grade.create!(remark: "",value: 1, date: Date.today-1, student: student1, user: arno)

grade1=Grade.create!(remark: "",value: 1, date: Date.today-1, student: student2, user: arno)
grade2=Grade.create!(remark: "",value: 2, date: Date.today, student: student3, user: arno)
