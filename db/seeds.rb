Group.destroy_all
Student.destroy_all

group1=Group.create!(name: "Group1",start_date:Date.today,end_date:Date.today)
group2=Group.create!(name: "Group2",start_date:Date.today,end_date:Date.today)
group3=Group.create!(name: "Group3",start_date:Date.today,end_date:Date.today)

student1=Student.create!(name: "student1",surname: "student1",group: group1)
student2=Student.create!(name: "student2",surname: "student2",group: group1)
student3=Student.create!(name: "student3",surname: "student3",group: group1)
