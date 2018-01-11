Group.destroy_all
Student.destroy_all
User.destroy_all
Grade.destroy_all

group1=Group.create!(name: "10",start_date:Date.today-30,end_date:Date.today+7)
group2=Group.create!(name: "11",start_date:Date.today-5,end_date:Date.today+30)
# group3=Group.create!(name: "Group3",start_date:Date.today,end_date:Date.today)

student1=Student.create!(name: "Mimi",surname: "Magusin",photo: "https://codaisseur-production.s3.amazonaws.com/uploads/student_bio/picture/149/mimi-jpg-d829f0071d3e7638512afbd4dba99de3.png",  group: group1)
student2=Student.create!(name: "Jan-Sijmen",surname: "Zwarts",photo: "https://codaisseur-production.s3.amazonaws.com/uploads/student_bio/picture/137/jan-sijmen-jpg-e74646dad14268cf89e65650076caf7b.png", group: group1)
student3=Student.create!(name: "Megan",surname: "Callenbach",photo: "https://codaisseur-production.s3.amazonaws.com/uploads/student_bio/picture/147/megan-jpg-8b5d71305ec2da3710ed13e2e511ebb8.png", group: group1)
student4=Student.create!(name: "Faisal",surname: "Al-Sudani", photo: "https://codaisseur-production.s3.amazonaws.com/uploads/student_bio/picture/148/faisal-jpg-29eaa2d0a19131f70818a7a206c6bbec.png", group: group1)
student5=Student.create!(name: "Serene",surname: "Angelina",photo: "https://codaisseur-production.s3.amazonaws.com/uploads/student_bio/picture/150/serene-jpg-85ffa823a374bfa3506541881a18b6ad.png", group: group1)
student6=Student.create!(name: "Ana",surname: "Lacruz",photo: "https://codaisseur-production.s3.amazonaws.com/uploads/student_bio/picture/136/ana_lacruz-jpg-9e5e0e646d4bd525d0b5e6dac29b7a09.png", group: group1)
student7=Student.create!(name: "Matthijs",surname: "Mandjes",photo: "https://codaisseur-production.s3.amazonaws.com/uploads/student_bio/picture/138/matthijs-jpg-c19a10b6e51ca4058d7c325a6226d31a.png", group: group1)
arno = User.create!(
  email: 'arno@codaisseur.com',
  password: '123456'
)

grade3=Grade.create!(remark: "",value: 0, date: Date.today-2, student: student1, user: arno)

grade2=Grade.create!(remark: "",value: 1, date: Date.today-1, student: student1, user: arno)

grade4=Grade.create!(remark: "",value: 0, date: Date.today-1, student: student2, user: arno)
grade5=Grade.create!(remark: "",value: 2, date: Date.today-1, student: student3, user: arno)

grade6=Grade.create!(remark: "",value: 1, date: Date.today-1, student: student4, user: arno)
grade7=Grade.create!(remark: "",value: 2, date: Date.today-1, student: student5, user: arno)
grade8=Grade.create!(remark: "",value: 1, date: Date.today-1, student: student6, user: arno)
